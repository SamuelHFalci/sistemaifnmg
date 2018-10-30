<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Entity\OcorrenciaAluno;
use SistemaIfnmg\Service\OcorrenciaAlunoDAO;

class OcorrenciaAlunoController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new OcorrenciaAlunoDAO());
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
        $a = new OcorrenciaAluno();
        $a->setOcorrenciafk($json->ocorrenciafk);
        $a->setAlunofk($json->alunofk);
        $a->setData(date("Y-m-d H:i:s"));
        $this->getDao()->insert($a);
        return $json;
    }

    public function update($json, $id){


        $ocorrencia = $this->getDao()->findOneBy(array('ocorrenciafk' => $json->ocorrenciafk->id, 'alunofk' => $id));


        $ocorrenciaAluno = new OcorrenciaAluno();
        $ocorrenciaAluno->setId($ocorrencia->id);
        $ocorrenciaAluno->setAlunofk($ocorrencia->alunofk);
        $ocorrenciaAluno->setOcorrenciafk($json->ocorrenciafk->id);
        $ocorrenciaAluno->setConfirmacao(1);


        $this->getDao()->update($ocorrenciaAluno);
        return ["mensagem"=>"Aluno inserido com sucesso"];
    }

}


?>