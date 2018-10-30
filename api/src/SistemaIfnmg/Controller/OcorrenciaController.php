<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\AlunoDAO;
use SistemaIfnmg\Service\OcorrenciaDAO;
use SistemaIfnmg\Entity\Ocorrencia;
use SistemaIfnmg\Entity\OcorrenciaAluno;
use SistemaIfnmg\Service\OcorrenciaAlunoDAO;

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
            $obj = $this->getDao()->findById($id);
            $this->setDao(new AlunoDAO());
            foreach ($obj->alunos as $key => $aluno) {

                if ($aluno->ocorrenciafk != $id) {
                    unset($obj->alunos[$key]);
                }
                $aluno->alunofk = $this->getDao()->findById($aluno->alunofk);
            }
            if ($obj != null) {
                $data = $obj;
            } else {
                $data = [];
            }
        }
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

}


?>