<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\ServidorDAO;
use SistemaIfnmg\Service\ReuniaoDAO;
use SistemaIfnmg\Entity\Reuniao;
use SistemaIfnmg\Entity\ReuniaoServidor;
use SistemaIfnmg\Service\ReuniaoServidorDAO;

class ReuniaoController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new ReuniaoDAO());
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
            $this->setDao(new ServidorDAO());
            foreach($obj->servidores as $key=>$servidor){
                if($servidor->reuniaofk != $id){
                    unset($obj->servidores[$key]);
                }
                $servidor->servidorfk = $this->getDao()->findById($servidor->servidorfk);
            }
            if ($obj != null) {
                $data = $obj;
            } else {
                $data = [];
            }
        }
        return $data;
    }

    public function insert($json){
        $reuniao = new Reuniao();
        $reuniao->setTitulo($json->titulo);
        $reuniao->setTipo($json->tipo);

        $reuniao->setDescricao($json->descricao);
        $reuniao->setData(new \DateTime($json->data));
        $id = $this->getDao()->insert($reuniao);
        $this->setDao(new ReuniaoServidorDAO());
        foreach($json->servidores as $servidor){

            $s = new ReuniaoServidor();

            $s->setServidorfk($servidor->id);
            $s->setReuniaofk($id);
            $this->getDao()->insert($s);

        }

        return $id;
    }

}


?>