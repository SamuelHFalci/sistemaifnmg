app.controller('listarUsuarioCtrl', ['$scope', '$http',
    function ($scope, $http) {
        $scope.teste = 'teste';

        $http.get('api/usuario/').then(function (response) {

            $scope.usuarios = response.data;

        }, function (response) {


        });
    }])
    .controller('cadastrarUsuarioCtrl', ['$scope', '$http', '$window', 'notificationService',
        function ($scope, $http, $window, notificationService) {

            $scope.cadastrarUsuario = function () {
                console.log($scope.usuario);
                $scope.usuario.funcao = parseInt($scope.usuario.funcao);
                $http({
                    method: 'POST',
                    url: 'api/usuario/',
                    data: $scope.usuario
                }).then(
                    function (response) {

                        notificationService.success(response.mensagem);
                        //$window.location.href = '/sistemaifnmg/#!/aluno';


                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });

            }

        }])
    .controller('usuarioCtrl', ['$scope', '$http', '$window', '$routeParams',
        function ($scope, $http, $window, $routeParams) {

            $http.get('api/usuario/' + $routeParams.id).then(function (response) {

                $scope.usuario = response.data;
            });

        }])
