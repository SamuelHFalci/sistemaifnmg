app.controller('listarAlunoCtrl', ['$scope', '$http', '$window', 'urlApi',
    function ($scope, $http, $window, urlApi) {
        $scope.teste = 'teste';
        console.log($window.localStorage.getItem("funcaoUsuario"));
        $http.get(urlApi + '/aluno/').then(function (response) {

            $scope.alunos = response.data;
        }, function (response) {


        });
    }])
    .controller('cadastrarAlunoCtrl', ['$scope', '$http', '$window', 'notificationService', 'urlApi',
        function ($scope, $http, $window, notificationService, urlApi) {
            $http.get(urlApi + '/turma/').then(function (response) {

                $scope.turmas = response.data;
            });
            $scope.cadastrarAluno = function () {
                $scope.aluno.foto = $scope.aluno.foto.base64;
                if ($scope.formCadastroAluno.$invalid)
                    return;

                $http({
                    method: 'POST',
                    url: urlApi + '/aluno/',
                    data: $scope.aluno
                }).then(
                    function (response) {

                        notificationService.success('Success!!!');
                        $window.location.href = '/sistemaifnmg/#!/aluno';


                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });

            }

        }]).controller('editarAlunoCtrl', ['$scope', '$http', '$window', 'notificationService', 'urlApi', '$routeParams',
        function ($scope, $http, $window, notificationService, urlApi, $routeParams) {

            $http.get(urlApi + '/turma/').then(function (response) {

                $scope.turmas = response.data;
            });
            $http.get(urlApi + '/aluno/' + $routeParams.id).then(function (response) {
                $scope.aluno = response.data;
            }, function (response) {
            });
            $scope.editarAluno = function () {

                if ($scope.formCadastroAluno.$invalid)
                    return;

                $http({
                    method: 'PUT',
                    url: urlApi + '/aluno/'+$routeParams.id,
                    data: $scope.aluno
                }).then(
                    function (response) {

                        notificationService.success('Success!!!');
                        $window.location.href = '/sistemaifnmg/#!/aluno';


                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });

            }

        }])
    .controller('ocorrenciaAlunoCtrl', ['$scope', '$http', '$window', '$routeParams', 'urlApi',
        function ($scope, $http, $window, $routeParams, urlApi) {

            $http.get(urlApi + '/aluno/' + $routeParams.id).then(function (response) {

                $scope.ocorrencias = response.data;
                angular.forEach($scope.ocorrencias.ocorrencias, function (ocorrencia) {
                    ocorrencia.data = new Date(ocorrencia.data.date);
                })
            });
            $scope.confirmarOcorrencia = function (ocorrencia) {
                ocorrencia.confirmacao = 1;
                $http({
                    method: 'PUT',
                    url: urlApi + '/ocorrenciaaluno/' + $routeParams.id,
                    data: ocorrencia
                }).then(function (response) {
                    console.log(response);
                    //$location.path('/ocorrencia/'+response.data);
                }, function (error) {
                    var data = error.data;
                });
            }

        }])
    .controller('provaAlunoCtrl', ['$scope', '$http', '$window', '$routeParams', 'urlApi',
        function ($scope, $http, $window, $routeParams, urlApi) {

            $http.get(urlApi + '/aluno/' + $routeParams.id + '/prova').then(function (response) {

                $scope.provas = response.data;
                $scope.hoje = new Date().getDate();
            });


        }])
