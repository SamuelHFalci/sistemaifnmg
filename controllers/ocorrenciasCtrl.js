app.controller('listarOcorrenciaCtrl', ['$scope', '$http','urlApi',
    function ($scope, $http, urlApi) {


        $http.get(urlApi+'/ocorrencia/').then(function (response) {

            $scope.ocorrencias = response.data;
        }, function (response) {


        });
    }])
    .controller('cadastrarOcorrenciaCtrl', ['$scope', '$http', '$window', 'notificationService','$location', 'urlApi',
        function ($scope, $http, $window, notificationService, $location, urlApi) {

            $scope.alunos = [];
            $scope.alunosAdicionados = [];
            $http.get(urlApi+'/aluno/').then(function (response) {
                $scope.alunos = response.data;

            }, function (response) {


            });

            $scope.adicionarAluno = function (aluno) {
                $scope.ok = true;
                angular.forEach($scope.alunosAdicionados, function (value) {
                    if (value.id == aluno.id) {
                        $scope.ok = false;
                    }
                })
                if ($scope.ok == true) {
                    $scope.alunosAdicionados = $scope.alunosAdicionados.concat(aluno);
                }
                $scope.alunos.splice($scope.alunos.indexOf(aluno), 1);
            }

            $scope.excluirAluno = function (aluno) {
                $scope.alunosAdicionados.splice($scope.alunosAdicionados.indexOf(aluno), 1);
                $scope.alunos = $scope.alunos.concat(aluno);
            }

            $scope.cadastrarOcorrencia = function () {

                console.log($scope.alunosAdicionados);

                $scope.ocorrencia.alunos = $scope.alunosAdicionados;
                $http({
                    method: 'POST',
                    url: urlApi+'/ocorrencia/',
                    data: $scope.ocorrencia
                }).then(function (response) {
                    console.log(response);
                    $location.path('/ocorrencia/'+response.data);
                }, function (error) {
                    var data = error.data;
                });
            }

        }]).controller('editarOcorrenciaCtrl', ['$scope', '$http', '$window', 'notificationService','$location', 'urlApi', '$routeParams','$filter',
        function ($scope, $http, $window, notificationService, $location, urlApi, $routeParams, $filter) {

            $scope.alunos = [];
            $scope.alunosAdicionados = [];
            $http.get(urlApi+'/aluno/').then(function (response) {
                $scope.alunos = response.data;
                $http.get(urlApi+'/ocorrencia/'+$routeParams.id).then(function (response) {
                    $scope.ocorrencia = response.data;
                    $scope.ocorrencia.data = new Date($scope.ocorrencia.data);
                    angular.forEach($scope.ocorrencia.alunos, function(aluno){
                        $scope.adicionarAluno(aluno.alunofk);
                    })
                }, function (response) {


                });

            }, function (response) {


            });



            $scope.adicionarAluno = function (aluno) {
                $scope.ok = true;
                angular.forEach($scope.alunosAdicionados, function (value) {
                    if (value.id == aluno.id) {
                        $scope.ok = false;
                    }
                })
                if ($scope.ok == true) {
                    $scope.alunosAdicionados = $scope.alunosAdicionados.concat(aluno);
                }
                $scope.alunos.splice($scope.alunos.indexOf(aluno), 1);
            }

            $scope.excluirAluno = function (aluno) {
                $scope.alunosAdicionados.splice($scope.alunosAdicionados.indexOf(aluno), 1);
                $scope.alunos = $scope.alunos.concat(aluno);
            }

            $scope.editarOcorrencia = function () {



                $scope.ocorrencia.alunos = $scope.alunosAdicionados;
                $http({
                    method: 'PUT',
                    url: urlApi+'/ocorrencia/'+$routeParams.id,
                    data: $scope.ocorrencia
                }).then(function (response) {
                    console.log(response);
                    $location.path('/ocorrencia/'+response.data);
                }, function (error) {
                    var data = error.data;
                });
            }

        }])
    .controller('ocorrenciaCtrl', ['$scope', '$http', '$window', '$routeParams','urlApi',
        function ($scope, $http, $window, $routeParams, urlApi) {

            $http.get(urlApi+'/ocorrencia/'+ $routeParams.id).then(function (response) {
                $scope.ocorrencia = response.data;
            });



        }])
    .controller('relatorioOcorrenciaCtrl', ['$scope', '$http', '$window', '$routeParams',
        function ($scope, $http, $window, $routeParams) {

            // $http.get('api/ocorrencia/'+ $routeParams.id).then(function (response) {
            //     $scope.ocorrencia = response.data;
            // });



        }])