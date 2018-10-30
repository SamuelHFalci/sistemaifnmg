app.controller('listarOcorrenciaCtrl', ['$scope', '$http',
    function ($scope, $http) {


        $http.get('api/ocorrencia/').then(function (response) {

            $scope.ocorrencias = response.data;
        }, function (response) {


        });
    }])
    .controller('cadastrarOcorrenciaCtrl', ['$scope', '$http', '$window', 'notificationService','$location',
        function ($scope, $http, $window, notificationService, $location) {

            $scope.alunos = [];
            $scope.alunosAdicionados = [];
            $http.get('api/aluno/').then(function (response) {
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
                    url: 'api/ocorrencia/',
                    data: $scope.ocorrencia
                }).then(function (response) {
                    console.log(response);
                    $location.path('/ocorrencia/'+response.data);
                }, function (error) {
                    var data = error.data;
                });
            }

        }])
    .controller('ocorrenciaCtrl', ['$scope', '$http', '$window', '$routeParams',
        function ($scope, $http, $window, $routeParams) {

            $http.get('api/ocorrencia/'+ $routeParams.id).then(function (response) {
                $scope.ocorrencia = response.data;
            });



        }]).controller('relatorioOcorrenciaCtrl', ['$scope', '$http', '$window', '$routeParams',
        function ($scope, $http, $window, $routeParams) {

            // $http.get('api/ocorrencia/'+ $routeParams.id).then(function (response) {
            //     $scope.ocorrencia = response.data;
            // });



        }])