app.controller('listarServidorCtrl', ['$scope', '$http','urlApi',
    function ($scope, $http, urlApi) {
        $scope.teste = 'teste';

        $http.get(urlApi+'/servidor/').then(function (response) {

            $scope.servidores = response.data;
            console.log($scope.servidores);
        }, function (response) {


        });
    }])
    .controller('cadastrarServidorCtrl', ['$scope', '$http', '$window', 'notificationService','urlApi',
        function ($scope, $http, $window, notificationService, urlApi) {

            $scope.cadastrarServidor = function () {
                console.log($scope.servidor);
                $http({
                    method: 'POST',
                    url: urlApi+'/servidor/',
                    data: $scope.servidor
                }).then(
                    function (response) {

                        notificationService.success('Success!!!');
                        //$window.location.href = '/sistemaifnmg/#!/aluno';


                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });

            }

        }])
    .controller('servidorCtrl', ['$scope', '$http', '$window', '$routeParams','urlApi',
        function ($scope, $http, $window, $routeParams,urlApi) {

            $http.get(urlApi+'/servidor/' + $routeParams.id).then(function (response) {

                $scope.servidor = response.data;
            });

        }])
