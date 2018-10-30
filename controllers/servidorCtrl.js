app.controller('listarServidorCtrl', ['$scope', '$http',
    function ($scope, $http) {
        $scope.teste = 'teste';

        $http.get('api/servidor/').then(function (response) {

            $scope.servidores = response.data;
            console.log($scope.servidores);
        }, function (response) {


        });
    }])
    .controller('cadastrarServidorCtrl', ['$scope', '$http', '$window', 'notificationService',
        function ($scope, $http, $window, notificationService) {

            $scope.cadastrarServidor = function () {
                console.log($scope.servidor);
                $http({
                    method: 'POST',
                    url: 'api/servidor/',
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
    .controller('servidorCtrl', ['$scope', '$http', '$window', '$routeParams',
        function ($scope, $http, $window, $routeParams) {

            $http.get('api/servidor/' + $routeParams.id).then(function (response) {

                $scope.servidor = response.data;
            });

        }])
