app.controller('listarTurmaCtrl', ['$scope', '$http', '$window', 'urlApi',
    function ($scope, $http, $window, urlApi) {
        $http.get(urlApi + '/turma/').then(function (response) {
            $scope.turmas = response.data;
        }, function (response) {
        });
    }])
    .controller('cadastrarTurmaCtrl', ['$scope', '$http', '$window', 'notificationService', 'urlApi',
        function ($scope, $http, $window, notificationService, urlApi) {

            $scope.cadastrarTurma = function () {
                if ($scope.formCadastroTurma.$invalid)
                    return;

                $http({
                    method: 'POST',
                    url: urlApi + '/turma/',
                    data: $scope.turma
                }).then(
                    function (response) {
                        notificationService.success('Success!!!');
                        $window.location.href = '/sistemaifnmg/#!/aluno';
                    }, function (error) {
                        var data = error.data;
                        // not relevant
                    });

            }

        }]).controller('editarTurmaCtrl', ['$scope', '$http', '$window', 'urlApi', '$routeParams',
    function ($scope, $http, $window, urlApi, $routeParams) {

        $http.get(urlApi + '/turma/' + $routeParams.id).then(function (response) {
            $scope.turma = response.data;
        }, function (response) {
        });
        $scope.editarTurma = function () {
            console.log($scope.turma);
            if ($scope.formCadastroTurma.$invalid)
                return;

            $http({
                method: 'PUT',
                url: urlApi + '/turma/'+ $routeParams.id,
                data: $scope.turma
            }).then(
                function (response) {

                    $window.location.href = '/sistemaifnmg/#!/turma';
                }, function (error) {
                    var data = error.data;
                    // not relevant
                });

        }
    }])