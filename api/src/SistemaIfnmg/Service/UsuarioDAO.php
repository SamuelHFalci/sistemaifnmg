<?php

namespace SistemaIfnmg\Service;


class UsuarioDAO extends ServiceDefault
{
    private $em;
    public function __construct()
    {
        $this->em = parent::__construct('SistemaIfnmg\Entity\Usuario');
    }

}

?>