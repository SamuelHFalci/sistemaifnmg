<?php
// bootstrap.php
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

require_once "vendor/autoload.php";

$isDevMod = true;
$config = Setup::createAnnotationMetadataConfiguration(array(__DIR__ . "/src/SistemaIfnmg/Entity"), $isDevMode, null, null, false);

$conn = array(
    'dbname'=> 'sistemaifnmg',
    'user'=> 'root',
    'password'=> 'BuRox2005',
    'host'=> 'localhost',
    'driver'=> 'pdo_mysql',
);

$entityManager = EntityManager::create($conn, $config);

?>