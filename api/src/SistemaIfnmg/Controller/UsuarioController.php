<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\UsuarioDAO;
use SistemaIfnmg\Entity\Usuario;

class UsuarioController
{
    private $dao;

    public function __construct()
    {
        $this->setDao(new UsuarioDAO());
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
        $user = new Usuario();
        $user->setEmail($json->email);
        $user->setSenha(md5($json->senha));
        $user->setNome($json->nome);
        $user->setSobrenome($json->sobrenome);
        $user->setFuncao($json->funcao);
        $this->getDao()->insert($user);
        return ["mensagem"=>"Usuario inserido com sucesso"];
    }

}


?>