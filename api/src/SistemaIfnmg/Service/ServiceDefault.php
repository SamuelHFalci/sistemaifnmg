<?php

namespace SistemaIfnmg\Service;

use Doctrine\ORM\EntityManager;
use Doctrine\ORM\Tools\Setup;
use JMS\Serializer\SerializerBuilder;

class ServiceDefault
{
    protected $entityManager;
    private $entityPath;

    public function __construct($entityPath)
    {
        $this->entityPath = $entityPath;
        $this->entityManager = $this->createEntityManager();
    }

    public function createEntityManager()
    {
        $path = array(
            'SistemaIfnmg/Entity'
        );
        $devMode = true;
        $config = Setup::createAnnotationMetadataConfiguration($path, $devMode, null, null, FALSE);

//        $connectionOptions = array(
//            'dbname' => 'sistemaifnmg',
//            'user' => 'root',
//            'password' => 'BuRox2005',
//            'host' => 'localhost',
//            'driver' => 'pdo_mysql',
//            'charset' => 'utf8'
//        );
        $connectionOptions = array(
            'dbname' => 'sistemaifnmg',
            'user' => 'root',
            'password' => 'BuRox2005',
            'host' => 'localhost',
            'driver' => 'pdo_mysql',
            'charset' => 'utf8'
        );

        return EntityManager::create($connectionOptions, $config);
    }

    public function insert($obj)
    {
        $this->entityManager->persist($obj);
        $this->entityManager->flush();
        return $obj->getId();
    }

    public function merge($obj)
    {
        $this->entityManager->merge($obj);
        $this->entityManager->flush();
        return $obj->getId();
    }

    public function update($obj)
    {
        $this->entityManager->merge($obj);
        $this->entityManager->flush();
    }

    public function delete($obj)
    {

        $this->entityManager->remove($obj);
        $this->entityManager->flush();
    }

    public function findById($id)
    {
        $serializer = SerializerBuilder::create()->build();
        return json_decode($serializer->serialize($this->entityManager->find($this->entityPath, $id), 'json'));
    }

    public function findOneBy($dados)
    {
        $serializer = SerializerBuilder::create()->build();
        $collection = $this->entityManager->getRepository($this->entityPath)->findOneBy($dados);

        return json_decode($serializer->serialize($collection, 'json'));
    }

    public function findBy($dados, $ordem)
    {
        $serializer = SerializerBuilder::create()->build();
        $collection = $this->entityManager->getRepository($this->entityPath)->findBy($dados, $ordem);

        return json_decode($serializer->serialize($collection, 'json'));
    }

    public function findAll()
    {

        $serializer = SerializerBuilder::create()->build();

        $collection = $this->entityManager->getRepository($this->entityPath)->findAll();

        $data = array();
        foreach ($collection as $item) {

            $data[] = json_decode($serializer->serialize($item, 'json'));
        }

        return $data;
    }

    public function createQueryBuilder()
    {
        return $this->entityManager->createQueryBuilder();
    }

    public function createQuery()
    {
        return $this->entityManager->createQuery();
    }
}

?>