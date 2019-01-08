<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\AlunoDAO;
use SistemaIfnmg\Service\OcorrenciaDAO;
use SistemaIfnmg\Entity\Ocorrencia;
use SistemaIfnmg\Entity\OcorrenciaAluno;
use SistemaIfnmg\Service\OcorrenciaAlunoDAO;
use SistemaIfnmg\Entity\Aluno;

class OcorrenciaController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new OcorrenciaDAO());
    }

    /**
     * @return mixed
     */
    public function getDao()
    {
        return $this->dao;
    }

    /**
     * @param mixed $dao
     */
    public function setDao($dao)
    {
        $this->dao = $dao;
    }

    public function get($id)
    {
        if ($id == null) {
            $data = array();
            $result = $this->getDao()->findAll();

            foreach ($result as $obj) {
                $data[] = $obj;
            }
        } else {

            $qb = $this->getDao()->createQueryBuilder();


            $qb->select(array('ocorrencia.titulo, ocorrencia.descricao, ocorrencia.tipo, ocorrencia.data, aluno'))
                ->from('SistemaIfnmg\Entity\OcorrenciaAluno', 'o')
                ->join('SistemaIfnmg\Entity\Ocorrencia', 'ocorrencia', 'WITH', 'ocorrencia.id = o.ocorrenciafk')
                ->join('SistemaIfnmg\Entity\Aluno', 'aluno', 'WITH', 'aluno.id = o.alunofk')
                ->where("ocorrencia.id=$id");


            $query = $qb->getQuery();
            $result = $query->getArrayResult();
            $data['titulo'] = $result[0]['titulo'];
            $data['descricao'] = $result[0]['descricao'];
            $data['tipo'] = $result[0]['tipo'];
            $data['data'] = $result[0]['data'];

            foreach ($result as $aluno) {
                $data['alunos'][] = $aluno[0];
            }


        }
        return $data;
    }

    public function getNaoConfirmadas()
    {
        $qb = $this->getDao()->createQueryBuilder();
        $qb->select(array('o'))
            ->from('SistemaIfnmg\Entity\Ocorrencia', 'o')
            ->join('SistemaIfnmg\Entity\OcorrenciaAluno', 'oa', 'WITH', 'o.id = oa.ocorrenciafk')
            ->where("oa.confirmacao=0");


        $query = $qb->getQuery();
        $data = $query->getArrayResult();
        return $data;
    }

    public function insert($json)
    {
        $ocorrencia = new Ocorrencia();
        $ocorrencia->setTitulo($json->titulo);
        $ocorrencia->setTipo($json->tipo);

        $ocorrencia->setDescricao($json->descricao);
        $ocorrencia->setData(new \DateTime($json->data));
        $id = $this->getDao()->insert($ocorrencia);
        $this->setDao(new OcorrenciaAlunoDAO());
        foreach ($json->alunos as $aluno) {
            $o = new OcorrenciaAluno();
            $o->setAlunofk($aluno->id);
            $o->setOcorrenciafk($id);
            $o->setConfirmacao(0);
            $this->getDao()->insert($o);
        }

        return $id;
    }

    public function update($json, $id)
    {
        $ocorrencia = new Ocorrencia();
        $ocorrencia->setId($id);
        $ocorrencia->setTitulo($json->titulo);
        $ocorrencia->setTipo($json->tipo);

        $ocorrencia->setDescricao($json->descricao);
        $ocorrencia->setData(new \DateTime($json->data));
        $this->getDao()->update($ocorrencia);
        $this->setDao(new OcorrenciaAlunoDAO());

        $qb = $this->getDao()->createQueryBuilder();
        $qb->delete('SistemaIfnmg\Entity\OcorrenciaAluno', 'oa');
        $qb->where("oa.ocorrenciafk= $id");
        $qb->getQuery()->execute();

        foreach ($json->alunos as $aluno) {
            $o = new OcorrenciaAluno();
            $o->setAlunofk($aluno->id);
            $o->setOcorrenciafk($id);
            $o->setConfirmacao(0);
            $this->getDao()->insert($o);
        }

        return $id;
    }

}


?>