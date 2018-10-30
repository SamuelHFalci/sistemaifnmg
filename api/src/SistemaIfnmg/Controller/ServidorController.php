<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\ServidorDAO;
use SistemaIfnmg\Entity\Servidor;


class ServidorController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new ServidorDAO());
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
        $servidor = new Servidor();
        $servidor->setId(0);
        $servidor->setNome($json->nome);
        $servidor->setSobrenome($json->sobrenome);
        $servidor->setCargo($json->cargo);
        $servidor->setMatricula($json->matricula);
        $servidor->setEmail($json->email);
        $servidor->setSenha(md5($json->senha));
        $this->getDao()->insert($servidor);
        return ["mensagem"=>"servidor inserido com sucesso"];
    }

}


?>