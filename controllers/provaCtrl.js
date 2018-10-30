app.controller('listarProvaCtrl', ['$scope', '$http','$window','urlApi',
    function ($scope, $http, $window, urlApi) {


        // $http.get('api/aluno/').then(function (response) {
        //
        //     $scope.alunos = response.data;
        //     console.log($scope.alunos);
        // }, function (response) {
        //
        //
        // });
    }])
    .controller('CadastrarProvaCtrl', ['$scope', '$http','$window','urlApi',
    function ($scope, $http, $window, urlApi) {
        $http.get(urlApi+'/turma/').then(function (response) {

            $scope.turmas = response.data;
            console.log($scope.turmas);
        }, function (response) {


        });
        $scope.cadastrarProva = function(){

            console.log($scope.prova);
        }
    }])

