app.directive('datepicker', function () {
    return {
        restrict: 'A',
        require: 'ngModel',
        link: function (scope, element, attrs, ngModelCtrl) {
            // var minDate = new Date();
            // if (attrs.minima) {
            //     var arrData = attrs.minima.split('/');
            //     minDate = new Date(arrData[2], parseInt(arrData[1]) - 1, arrData[0]);
            // }
            element.datepicker({
                dateFormat: 'dd/mm/yy',
                nextText: 'Próximo',
                prevText: 'Anterior',
                yearRange: "0:+4",
                monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho',
                    'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                monthNamesShort: ['Jan.', 'Fev.', 'Mar.', 'Abr.', 'Mai.', 'Jun.',
                    'Jul.', 'Ago.', 'Set.', 'Out.', 'Nov.', 'Dez.'],
                dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado'],
                dayNamesShort: ['Dom.', 'Seg.', 'Ter.', 'Qua.', 'Qui.', 'Sex.', 'Sáb.'],
                dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S'],
                closeText: 'Fechar',
                // minDate: minDate,
                onSelect: function (date) {
                    if (this.id === "DataCompra") {
                        scope.filtros.data_compra = date
                    }else{
                        // scope.filtros.data_embarque = '2017-08-21'
                        scope.filtros.data_embarque = date
                    }
                    // scope.$apply();
                    scope.recarregaIdeal();
                }
            });
        }
    };
});