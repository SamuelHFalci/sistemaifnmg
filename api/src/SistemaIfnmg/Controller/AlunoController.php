<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\AlunoDAO;
use SistemaIfnmg\Entity\Aluno;
use SistemaIfnmg\Service\OcorrenciaDAO;
use SistemaIfnmg\Service\ProvaDAO;

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
        $id = $this->getDao()->findById($id)->turma->id;
        $this->setDao(new ProvaDAO());
        return $this->getDao()->findBy(array('turmafk' => $id), array('data'=>'asc'));
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
            $this->setDao(new OcorrenciaDAO());
            foreach ($obj->ocorrencias as $key => $ocorrencia) {
                if ($ocorrencia->alunofk != $id) {
                    unset($obj->ocorrencias[$key]);
                }
                $ocorrencia->ocorrenciafk = $this->getDao()->findById($ocorrencia->ocorrenciafk);
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
        $aluno = new Aluno();
        $aluno->setId(0);
        $aluno->setNome($json->nome);
        $aluno->setSobrenome($json->sobrenome);
        $aluno->setMatricula($json->matricula);
        $aluno->setEmail($json->email);
        $aluno->setSenha(md5($json->senha));
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
        $this->getDao()->update($aluno);
        return ["mensagem" => "Aluno inserido com sucesso"];
    }

}


?>