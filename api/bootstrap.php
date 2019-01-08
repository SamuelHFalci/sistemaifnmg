<?php
// bootstrap.php
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

require_once "vendor/autoload.php";
require_once "config.php";

$isDevMod = true;
$config = Setup::createAnnotationMetadataConfiguration(array(__DIR__ . "/src/SistemaIfnmg/Entity"), $isDevMode, null, null, false);

$conn = array(
    'driver' => 'pdo_mysql',
    'host' => 'localhost',
    'dbname' => 'sistemaifnmg',
    'user' => 'root',
    'password' => 'BuRox2005',
    'charset' => 'utf-8'
);

$entityManager = EntityManager::create($conn, $config);

?>