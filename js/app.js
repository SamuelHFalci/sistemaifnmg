var app = angular.module("myApp", ["ngRoute", "jlareau.pnotify"]);
app.value('urlApi', 'api')
app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
        .when("/", {
            templateUrl: "views/login/login.html",
            controller: "loginCtrl"

        })
        .when("/logout/", {
            templateUrl: "views/login/logout.html",
            controller: "logoutCtrl"
        })
        .when("/home/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") != 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/index.html"

        })
        .when("/ocorrencia/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/ocorrencia/listar.html",
            controller: "listarOcorrenciaCtrl"
        })

        .when("/ocorrencia/cadastrar/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/ocorrencia/cadastrar.html",
            controller: "cadastrarOcorrenciaCtrl"
        }).when("/ocorrencia/relatorio/", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                    $location.path('/');
                }
            }
        },
        templateUrl: "views/ocorrencia/relatorio.html",
        controller: "relatorioOcorrenciaCtrl"
    })
        .when("/ocorrencia/:id/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/ocorrencia/ocorrencia.html",
            controller: "ocorrenciaCtrl"
        }).when("/ocorrencia/:id/editar", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                    $location.path('/');
                }
            }
        },
        templateUrl: "views/ocorrencia/editar.html",
        controller: "editarOcorrenciaCtrl"
    })
        .when("/aluno/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/aluno/listar.html",
            controller: "listarAlunoCtrl"
        })
        .when("/aluno/cadastrar/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/aluno/cadastrar.html",
            controller: "cadastrarAlunoCtrl"
        })
        .when("/aluno/:id/", {

            resolve: {
                'check': function ($location, $window, $route) {
                    if ($window.localStorage.getItem("funcaoUsuario") == 3) {
                        if ($route.current.params.id != JSON.parse($window.localStorage.getItem('usuario')).id || $window.localStorage.getItem("isLoggedin") != 'true') {

                            $location.path('/');
                        }
                    }

                }
            },
            templateUrl: "views/aluno/ocorrencias.html",
            controller: "ocorrenciaAlunoCtrl"
        }).when("/aluno/:id/provas", {

        resolve: {
            'check': function ($location, $window, $route) {
                if ($window.localStorage.getItem("funcaoUsuario") == 3) {
                    if ($route.current.params.id != JSON.parse($window.localStorage.getItem('usuario')).id || $window.localStorage.getItem("isLoggedin") != 'true') {

                        $location.path('/');
                    }
                }

            }
        },
        templateUrl: "views/aluno/prova.html",
        controller: "provaAlunoCtrl"
    }).when("/aluno/:id/editar", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                    $location.path('/');
                }
            }
        },
        templateUrl: "views/aluno/editar.html",
        controller: "editarAlunoCtrl"
    })
        .when("/servidor/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/servidor/listar.html",
            controller: "listarServidorCtrl"
        })
        .when("/servidor/cadastrar/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/servidor/cadastrar.html",
            controller: "cadastrarServidorCtrl"
        })
        .when("/servidor/:id/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/servidor/servidor.html",
            controller: "servidorCtrl"
        })
        .when("/reuniao/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/reuniao/listar.html",
            controller: "listarReuniaoCtrl"
        })
        .when("/reuniao/cadastrar/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/reuniao/cadastrar.html",
            controller: "cadastrarReuniaoCtrl"
        }).when("/reuniao/relatorio/", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                    $location.path('/');
                }
            }
        },
        templateUrl: "views/reuniao/relatorio.html",
        controller: "relatorioReuniaoCtrl"
    })
        .when("/reuniao/:id/", {
            resolve: {
                'check': function ($location, $window) {
                    if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                        $location.path('/');
                    }
                }
            },
            templateUrl: "views/reuniao/reuniao.html",
            controller: "reuniaoCtrl"
        }).when("/prova/", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true') {
                    $location.path('/prova/');
                }
            }
        },
        templateUrl: "views/prova/listar.html",
        controller: "listarProvaCtrl"
    }).when("/prova/cadastrar", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true') {
                    $location.path('/prova/');
                }
            }
        },
        templateUrl: "views/prova/cadastrar.html",
        controller: "CadastrarProvaCtrl"
    }).when("/turma/", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true' || $window.localStorage.getItem("funcaoUsuario") == 3) {
                    $location.path('/');
                }
            }
        },
        templateUrl: "views/turma/listar.html",
        controller: "listarTurmaCtrl"
    }).when("/turma/cadastrar", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true') {
                    $location.path('/turma/');
                }
            }
        },
        templateUrl: "views/turma/cadastrar.html",
        controller: "CadastrarTurmaCtrl"
    }).when("/turma/editar/:id/", {
        resolve: {
            'check': function ($location, $window) {
                if ($window.localStorage.getItem("isLoggedin") != 'true') {
                    $location.path('/turma/');
                }
            }
        },
        templateUrl: "views/turma/editar.html",
        controller: "CadastrarTurmaCtrl"
    })
});
app.run(function ($window, $rootScope) {

    $rootScope.funcaoUsuario = parseInt($window.localStorage.getItem("funcaoUsuario"));

    $rootScope.isLoggedin = $window.localStorage.getItem("isLoggedin");

})

