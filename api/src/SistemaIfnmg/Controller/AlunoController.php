<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\AlunoDAO;
use SistemaIfnmg\Entity\Aluno;
use SistemaIfnmg\Entity\Turma;
use SistemaIfnmg\Service\OcorrenciaDAO;
use SistemaIfnmg\Service\ProvaDAO;
use SistemaIfnmg\Service\TurmaDAO;

class AlunoController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new AlunoDAO());
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

    public function getProvas($id)
    {

        $this->setDao(new ProvaDAO());
        return $this->getDao()->findBy(array('turmafk' => $id), array('data' => 'asc'));
    }

    public function get($id)
    {

        if ($id == null) {
            $data = array();
            $result = $this->getDao()->findAll();
            $this->setDao(new TurmaDAO());
            foreach ($result as $obj) {
                $obj->turma = $this->getDao()->findById($obj->turma);
                $data[] = $obj;
            }
        } else {
            $qb = $this->getDao()->createQueryBuilder();



            $qb->select(array('ocorrencia.id, ocorrencia.titulo, ocorrencia.descricao, ocorrencia.tipo, ocorrencia.data, o.confirmacao,aluno.nome, aluno.sobrenome, aluno.matricula, aluno.turma'))
                ->from('SistemaIfnmg\Entity\OcorrenciaAluno','o')
                ->join('SistemaIfnmg\Entity\Ocorrencia', 'ocorrencia', 'WITH', 'ocorrencia.id = o.ocorrenciafk')
                ->join('SistemaIfnmg\Entity\Aluno', 'aluno', 'WITH', 'aluno.id = o.alunofk')
                ->where("aluno.id=$id");


            $query = $qb->getQuery();
            $result = $query->getArrayResult();

            $data['nome'] = $result[0]['nome'];
            $data['sobrenome'] = $result[0]['sobrenome'];
            $data['matricula'] = $result[0]['matricula'];
            $turma = $result[0]['turma'];

            foreach ($result as $ocorrencia){
                unset($ocorrencia['nome']);
                unset($ocorrencia['sobrenome']);
                unset($ocorrencia['matricula']);
                $data['ocorrencias'][] = $ocorrencia;
            }
            $data['provas'] = $this->getProvas($turma);
        }
        return $data;
    }

    public function insert($json)
    {
        $this->setDao(new TurmaDAO());
        $this->setDao(new AlunoDAO());
        $aluno = new Aluno();
        $aluno->setId(0);
        $aluno->setNome($json->nome);
        $aluno->setSobrenome($json->sobrenome);
        $aluno->setMatricula($json->matricula);
        $aluno->setEmail($json->email);
        $aluno->setSenha(md5($json->senha));
        $aluno->setTurma($json->turma);
        $aluno->setCpf($json->cpf);
        $aluno->setTelefoneResponsaveis($json->telefoneResponsaveis);
        $aluno->setTelefonePessoal($json->telefonePessoal);
        $this->getDao()->insert($aluno);
        return ["mensagem" => "Aluno inserido com sucesso"];
    }


    public function update($json, $id)
    {
        $aluno = new Aluno();
        $aluno->setId($id);
        $aluno->setNome($json->nome);
        $aluno->setSobrenome($json->sobrenome);
        $aluno->setMatricula($json->matricula);
        $aluno->setEmail($json->email);
        $aluno->setSenha($json->senha);
        $aluno->setTurma($json->turma);
        $aluno->setCpf($json->cpf);
        $aluno->setTelefoneResponsaveis($json->telefone_responsaveis);
        $aluno->setTelefonePessoal($json->telefone_pessoal);
        $this->getDao()->update($aluno);
        return ["mensagem" => "Aluno inserido com sucesso"];
    }

}


?>