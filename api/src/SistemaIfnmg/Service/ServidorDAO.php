<?php

namespace SistemaIfnmg\Service;


class ServidorDAO extends ServiceDefault
{
    public function __construct()
    {
        parent::__construct('SistemaIfnmg\Entity\Servidor');
    }
}

?>