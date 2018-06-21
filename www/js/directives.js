
directives.directive("shoppingListItemAdd", ['msgBusService', 'commonService', 'globalVarService', function (msgBusService, commonService, globalVarService) {
    return {
        restrict: "E",
        templateUrl: "partials/directives/shopping_list_item_add.html",
        scope: {
            addToShoppingList: '&',
            isTextEditing: '=',
            idShoppingListName: '=',
            dellaText: '='
        },
        link: function (scope, elem, attrb) {
            scope.addItem = function (text) {
                scope.addToShoppingList({dellaText: text, IDShoppingListName: scope.idShoppingListName});
                scope.focusOnTextBox();
            };
            jQuery(function ($) {
                $(document).on('input', '.della-input', function () {
                    scope.isTextEditing = true;
                }).on('click', '#dellaInputClearId', function () {
                    $('#dellaInputId').val('').change();
                    scope.isTextEditing = false;
                })
            });

            scope.$watch('dellaText', function (val) {
                if (val === '') {
                    scope.isTextEditing = false;
                }
            });

            scope.focusOnTextBox = function () {
                $("#dellaInputId").focus();
            }
        }
    }
}]);

directives.directive("compareTo", function () {
    return {
        require: "ngModel",
        scope: {
            otherModelValue: "=compareTo"
        },
        link: function (scope, element, attributes, ngModel) {

            ngModel.$validators.compareTo = function (modelValue) {
                return modelValue == scope.otherModelValue;
            };

            scope.$watch("otherModelValue", function () {
                ngModel.$validate();
            });
        }
    };
});
