<?php
$loader = require __DIR__ . '/vendor/autoload.php';

use SistemaIfnmg\Controller\UsuarioController;
use SistemaIfnmg\Controller\OcorrenciaController;
use SistemaIfnmg\Controller\AlunoController;
use SistemaIfnmg\Controller\ServidorController;
use SistemaIfnmg\Controller\OcorrenciaAlunoController;
use SistemaIfnmg\Controller\ReuniaoController;
use SistemaIfnmg\Controller\LoginController;
use SistemaIfnmg\Controller\EmailController;
use SistemaIfnmg\Controller\TurmaController;


$usuarioCtrl = new UsuarioController();
$ocorrenciaCtrl = new OcorrenciaController();
$alunoCtrl = new AlunoController();
$servidorCtrl = new ServidorController();
$ocorrenciaAlunoCtrl = new OcorrenciaAlunoController();
$reuniaoCtrl = new ReuniaoController();
$loginCtrl = new LoginController();
$emailCtrl = new EmailController();
$turmaCtrl = new TurmaController();

$config = [
    'settings' => [
        'addContentLengthHeader' => false,
        'displayErrorDetails' => true,
    ],

];

$app = new \Slim\App($config);

$app->get('/aluno/', function ($request, $response, $args) use ($alunoCtrl) {

    echo json_encode($alunoCtrl->get());
});
$app->get('/aluno/{id}', function ($request, $response, $args) use ($alunoCtrl) {

    echo json_encode($alunoCtrl->get($args['id']));
});
$app->get('/aluno/{id}/prova', function ($request, $response, $args) use ($alunoCtrl) {

    echo json_encode($alunoCtrl->getProvas($args['id']));
});
$app->post('/aluno/', function ($request, $response, $args) use ($alunoCtrl) {
    $json = json_decode($request->getBody());
    $alunoCtrl->insert($json);
});
$app->put('/aluno/{id}', function ($request, $response, $args) use ($alunoCtrl) {
    $json = json_decode($request->getBody());
    $alunoCtrl->update($json, $args['id']);
});
$app->get('/ocorrencia/', function ($request, $response, $args) use ($ocorrenciaCtrl) {

    echo json_encode($ocorrenciaCtrl->get());
});
$app->get('/ocorrencia/{id}', function ($request, $response, $args) use ($ocorrenciaCtrl) {

    echo json_encode($ocorrenciaCtrl->get($args['id']));
});

$app->post('/ocorrencia/', function ($request, $response) use ($ocorrenciaCtrl) {

    $json = json_decode($request->getBody());
    $ocorrenciaCtrl->insert($json);
});
$app->get('/ocorrenciaaluno/{id}', function ($request, $response, $args) use ($ocorrenciaAlunoCtrl) {

    echo json_encode($ocorrenciaAlunoCtrl->get($args['id']));
});
$app->put('/ocorrenciaaluno/{id}', function ($request, $response, $args) use ($ocorrenciaAlunoCtrl) {
    $json = json_decode($request->getBody());
    $ocorrenciaAlunoCtrl->update($json, $args['id']);
});
$app->get('/servidor/', function ($request, $response, $args) use ($servidorCtrl) {

    echo json_encode($servidorCtrl->get());
});
$app->get('/servidor/{id}', function ($request, $response, $args) use ($servidorCtrl) {

    echo json_encode($servidorCtrl->get($args['id']));
});
$app->post('/servidor/', function ($request, $response, $args) use ($servidorCtrl) {
    $json = json_decode($request->getBody());
    $servidorCtrl->insert($json);
});
$app->get('/reuniao/', function ($request, $response, $args) use ($reuniaoCtrl) {

    echo json_encode($reuniaoCtrl->get());
});
$app->get('/reuniao/{id}', function ($request, $response, $args) use ($reuniaoCtrl) {

    echo json_encode($reuniaoCtrl->get($args['id']));
});
$app->post('/reuniao/', function ($request, $response, $args) use ($reuniaoCtrl) {
    $json = json_decode($request->getBody());
    echo $reuniaoCtrl->insert($json);
});
$app->post('/email/', function ($request, $response, $args) use ($emailCtrl) {
    $json = json_decode($request->getBody());
    $emailCtrl->enviar($json);
});
$app->get('/usuario/', function ($request, $response, $args) use ($usuarioCtrl) {

    echo json_encode($usuarioCtrl->get());
});
$app->get('/usuario/{id}', function ($request, $response, $args) use ($usuarioCtrl) {

    echo json_encode($usuarioCtrl->get($args['id']));
});
$app->post('/usuario/', function ($request, $response, $args) use ($usuarioCtrl) {
    $json = json_decode($request->getBody());
    $usuarioCtrl->insert($json);
});
$app->post('/login/', function ($request, $response, $args) use ($loginCtrl) {
    $json = json_decode($request->getBody());
    echo $loginCtrl->login($json);
});
$app->get('/turma/', function ($request, $response, $args) use ($turmaCtrl) {

    echo json_encode($turmaCtrl->get());
});

$app->get('/', function () {
    echo json_encode([
        'api' => 'Sistema Ifnmg',
        'version' => '1.0.0'
    ]);
});


$app->run();

?>