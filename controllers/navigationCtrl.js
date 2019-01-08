app.controller('navigationCtrl', ['$scope', '$window',
    function ($scope, $window) {

        $scope.menu = [
            {
                title: 'Alunos',
                submenus: [
                    {
                        title: 'Listar',
                        link: '/sistemaifnmg/#!/aluno',
                    },
                    {
                        title: 'Cadastrar',
                        link: '/sistemaifnmg/#!/aluno/cadastrar',
                    },
                ]
            },
            {
                title: 'Servidores',
                submenus: [
                    {
                        title: 'Listar',
                        link: '/sistemaifnmg/#!/servidor',
                    },
                    {
                        title: 'Cadastrar',
                        link: '/sistemaifnmg/#!/servidor/cadastrar',
                    },
                ]
            },
            {
                title: 'Ocorrências',
                submenus: [
                    {
                        title: 'Listar não confirmadas',
                        link: '/sistemaifnmg/#!/ocorrencias-nao-confirmadas',
                    },
                    {
                        title: 'Cadastrar',
                        link: '/sistemaifnmg/#!/ocorrencia/cadastrar',
                    },
                    {
                        title: 'Gerar Relatório',
                        link: '/sistemaifnmg/#!/ocorrencia/relatorio',
                    }
                ]
            }, {
                title: 'Reuniões',
                submenus:
                    [
                        {
                            title: 'Listar',
                            link: '/sistemaifnmg/#!/reuniao',
                        },
                        {
                            title: 'Cadastrar',
                            link: '/sistemaifnmg/#!/reuniao/cadastrar',
                        },
                        {
                            title: 'Gerar Relatório',
                            link: '/sistemaifnmg/#!/reuniao/relatorio',
                        }
                    ]
            }, {
                title: 'Turmas',
                submenus:
                    [
                        {
                            title: 'Listar',
                            link: '/sistemaifnmg/#!/turma',
                        },
                        {
                            title: 'Cadastrar',
                            link: '/sistemaifnmg/#!/turma/cadastrar',
                        }
                    ]
            }

        ]

    }])
;