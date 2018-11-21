<?php
// bootstrap.php
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

require_once "vendor/autoload.php";

$isDevMod = true;
$config = Setup::createAnnotationMetadataConfiguration(array(__DIR__ . "/src/SistemaIfnmg/Entity"), $isDevMode, null, null, false);

$conn = array(
    'dbname' => 'projeto1_sistema',
    'user' => 'projeto1_sistema',
    'password' => 'c2lzdGVtYWlmb',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
    'charset'=> 'utf8'
);

$entityManager = EntityManager::create($conn, $config);

?>