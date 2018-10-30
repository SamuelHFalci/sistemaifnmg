app.controller('listarReuniaoCtrl', ['$scope', '$http', '$location', 'urlApi',
    function ($scope, $http, $location, urlApi) {

        $http.get(urlApi+'/reuniao/').then(function (response) {

            $scope.reunioes = response.data;
            console.log($scope.reunioes);
        }, function (response) {


        });
    }])
    .controller('cadastrarReuniaoCtrl', ['$scope', '$http', '$window', 'notificationService', '$location','urlApi',
        function ($scope, $http, $window, notificationService, $location, urlApi) {

            $scope.servidores = [];
            $scope.servidoresAdicionados = [];
            $http.get(urlApi+'/servidor/').then(function (response) {
                $scope.servidores = response.data;
                console.log($scope.servidores);
            }, function (response) {


            });

            $scope.adicionarServidor = function (servidor) {
                $scope.ok = true;
                angular.forEach($scope.servidoresAdicionados, function (value) {
                    if (value.id == servidor.id) {
                        $scope.ok = false;
                    }
                })
                if ($scope.ok == true) {
                    $scope.servidoresAdicionados = $scope.servidoresAdicionados.concat(servidor);
                }
                $scope.servidores.splice($scope.servidores.indexOf(servidor), 1);
            }

            $scope.excluirServidor = function (servidor) {
                $scope.servidoresAdicionados.splice($scope.servidoresAdicionados.indexOf(servidor), 1);
                $scope.servidores = $scope.servidores.concat(servidor);
            }

            $scope.cadastrarReuniao = function () {
                $scope.reuniao.servidores = $scope.servidoresAdicionados;
                $http({
                    method: 'POST',
                    url: urlApi+'/reuniao/',
                    data: $scope.reuniao
                }).then(function (response) {
                    console.log(response);
                    $location.path('/reuniao/' + response.data);
                }, function (error) {
                    var data = error.data;
                });
            }
        }])
    .controller('reuniaoCtrl', ['$scope', '$http', '$window', '$routeParams', '$filter','urlApi',
        function ($scope, $http, $window, $routeParams, $filter, urlApi) {

            $http.get(urlApi+'/reuniao/' + $routeParams.id).then(function (response) {

                $scope.reuniao = response.data;
            });

            $scope.enviarEmail = function (reuniao, corpoEmail) {
                console.log(reuniao);
                reuniao.data = $filter('date')(reuniao.data, "dd/MM/yyyy");

                $http({
                    method: 'POST',
                    url: urlApi+'/email/',
                    data: reuniao
                }).then(
                    function (response) {

                        notificationService.success('Success!!!');
                        //$window.location.href = '/sistemaifnmg/#!/aluno';


                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });
            }

        }]).controller('relatorioReuniaoCtrl', ['$scope', '$http', '$window', '$routeParams',
    function ($scope, $http, $window, $routeParams) {

        // $http.get('api/ocorrencia/'+ $routeParams.id).then(function (response) {
        //     $scope.ocorrencia = response.data;
        // });


    }])
