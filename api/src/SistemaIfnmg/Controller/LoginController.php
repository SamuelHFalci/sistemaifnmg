<?php

namespace SistemaIfnmg\Controller;

use SistemaIfnmg\Service\UsuarioDAO;
use SistemaIfnmg\Entity\Usuario;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Tools\Setup;
use JMS\Serializer\SerializerBuilder;

class LoginController
{
    private $dao;
    private $entityManager;
    private $entityPath;

    public function __construct($entityPath)
    {

        $this->entityPath = 'SistemaIfnmg\Entity\Usuario';
        $this->entityManager = $this->createEntityManager();
    }

    public function createEntityManager()
    {
        $path = array(
            'SistemaIfnmg/Entity'
        );
        $devMode = true;
        $config = Setup::createAnnotationMetadataConfiguration($path, $devMode, null, null, FALSE);

        $connectionOptions = array(
            'dbname' => 'sistemaifnmg',
            'user' => 'root',
            'password' => 'BuRox2005',
            'host' => 'localhost',
            'driver' => 'pdo_mysql',
            'charset'=> 'utf8'
        );

        return EntityManager::create($connectionOptions, $config);
    }

//    public function __construct()
//    {
//        $this->setDao(new UsuarioDAO());
//       // $this->em = getDao();
//    }

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


    public function login($json)
    {
        if ($json->tipoLogin == 1 || $json->tipoLogin == 2 || $json->tipoLogin == 4) {
            $qb = $this->entityManager->getRepository('SistemaIfnmg\Entity\Servidor');
            $serializer = SerializerBuilder::create()->build();
            return $serializer->serialize($qb->findOneBy(array('email' => $json->email, 'senha' => md5($json->senha), 'cargo'=>$json->tipoLogin)), 'json');
        } else if ($json->tipoLogin == 3) {
            $qb = $this->entityManager->getRepository('SistemaIfnmg\Entity\Aluno');
            $serializer = SerializerBuilder::create()->build();
            return $serializer->serialize($qb->findOneBy(array('email' => $json->email, 'senha' => md5($json->senha))), 'json');
        }


    }

}


?>