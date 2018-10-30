app.controller('loginCtrl', ['$scope', '$http', '$window', 'notificationService', '$rootScope', '$location','urlApi',
    function ($scope, $http, $window, notificationService, $rootScope, $location, urlApi) {
        $scope.credenciais = {};
        $scope.funcaoUsuario = null;
        $scope.login = function () {
            $http({
                method: 'POST',
                url: urlApi+'/login/',
                data: $scope.credenciais
            }).then(
                function (response) {
                    if (response.data != 'null') {
                        if($scope.credenciais.tipoLogin == 1 || $scope.credenciais.tipoLogin == 2 || $scope.credenciais.tipoLogin == 4){
                            $rootScope.isLoggedin = true;
                            $rootScope.funcaoUsuario = response.data.cargo;
                            $window.localStorage.setItem("isLoggedin", "true");
                            $window.localStorage.setItem("funcaoUsuario", response.data.cargo);
                            $window.localStorage.setItem("usuario", response.data);

                            if($scope.credenciais.tipoLogin == 1 ||$scope.credenciais.tipoLogin == 2){
                                $location.path('/aluno');
                            }if($scope.credenciais.tipoLogin == 4){
                                $location.path('/prova');
                            }

                        }else if($scope.credenciais.tipoLogin == 3){

                            $rootScope.isLoggedin = true;
                            $rootScope.funcaoUsuario = 3;
                            $window.localStorage.setItem("isLoggedin", "true");
                            $window.localStorage.setItem("funcaoUsuario", 3);
                            $window.localStorage.setItem("usuario", JSON.stringify(response.data));


                            $location.path('/aluno/'+ response.data.id);
                        }

                    }else{
                        $scope.erroLogin = true;
                    }

                    //notificationService.success('Success!!!');
                    //$window.location.href = '/sistemaifnmg/#!/aluno';


                }, function (error) {
                    var data = error.data;
                    // not relevant
                });

        }
    }])
    .controller('logoutCtrl', ['$window', '$location',
    function ($window, $location) {

        $window.localStorage.removeItem("isLoggedin");
        $window.localStorage.removeItem("funcaoUsuario");
        $window.localStorage.removeItem("usuario");
        $location.path('/');
        $window.location.reload();



    }])

