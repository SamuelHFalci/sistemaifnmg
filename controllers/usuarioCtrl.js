app.controller('listarUsuarioCtrl', ['$scope', '$http','urlApi',
    function ($scope, $http,urlApi) {
        $scope.teste = 'teste';

        $http.get(urlApi+'/usuario/').then(function (response) {

            $scope.usuarios = response.data;

        }, function (response) {


        });
    }])
    .controller('cadastrarUsuarioCtrl', ['$scope', '$http', '$window', 'notificationService','urlApi',
        function ($scope, $http, $window, notificationService, urlApi) {

            $scope.cadastrarUsuario = function () {
                console.log($scope.usuario);
                $scope.usuario.funcao = parseInt($scope.usuario.funcao);
                $http({
                    method: 'POST',
                    url: urlApi+'/usuario/',
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
    .controller('usuarioCtrl', ['$scope', '$http', '$window', '$routeParams','urlApi',
        function ($scope, $http, $window, $routeParams, urlApi) {

            $http.get(urlApi+'/usuario/' + $routeParams.id).then(function (response) {

                $scope.usuario = response.data;
            });

        }])
