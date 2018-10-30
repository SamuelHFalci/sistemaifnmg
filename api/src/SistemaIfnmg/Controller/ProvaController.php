<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\ProvaDAO;
use SistemaIfnmg\Entity\Prova;


class ProvaController
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

    public function insert($json){
        $prova = new Prova();
        $prova->setId(0);
        $prova->setTema($json->tema);
        $prova->setDisciplina($json->disciplina);
        $prova->setTurmafk($json->turmafk);
        $prova->setData($json->data);

        $this->getDao()->insert($prova);
        return ["mensagem"=>"Prova inserida com sucesso"];
    }

    public function update($json, $id){
        $prova = new Prova();
        $prova->setId($id);
        $prova->setTema($json->tema);
        $prova->setDisciplina($json->disciplina);
        $prova->setTurmafk($json->turmafk);
        $prova->setData($json->data);

        $this->getDao()->update($prova);
        return ["mensagem"=>"Prova inserida com sucesso"];
    }

}


?>