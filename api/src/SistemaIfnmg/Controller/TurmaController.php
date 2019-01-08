<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\TurmaDAO;
use SistemaIfnmg\Entity\Turma;


class TurmaController
{
    public function __construct()
    {
        $this->setDao(new TurmaDAO());
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
        $turma = new Turma();
        $turma->setId($json->id);
        $turma->setCodigo($json->codigo);
        $turma->setNome($json->nome);
        $turma->setCurso($json->curso);
        $turma->setAno($json->ano);
        $turma->setModalidade($json->modalidade);

        $this->getDao()->insert($turma);
        return ["mensagem" => "Turma inserida com sucesso"];
    }

    public function update($json, $id)
    {
        $turma = new Turma();
        $turma->setId($id);
        $turma->setCodigo($json->codigo);
        $turma->setNome($json->nome);
        $turma->setCurso($json->curso);
        $turma->setAno($json->ano);
        $turma->setModalidade($json->modalidade);

        $this->getDao()->update($turma);
        return ["mensagem" => "Turma inserida com sucesso"];
    }

}


?>