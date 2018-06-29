var app = angular.module ('app', ['onsen', 'directives', 'controllers',
    'services', 'ngAnimate', 'ngTouch', 'ngCookies', 'ngProgress']);

app.run (['$rootScope','$filter', function ($rootScope,$filter) {
    FastClick.attach (document.body);
    angular.element (document).on ("click", function (e) {
        $rootScope.$broadcast ("documentClicked", angular.element (e.target));
    });
}]);

var controllers = angular.module ('controllers', ['onsen.directives', 'services']);
var directives = angular.module ('directives', ['services']);
var services = angular.module ('services', []);


var baseUrl = 'xxxx';

const httpGET = 'GET';
const httpPOST = 'POST';

const methodLogin = 'GetToken';

const authToken = "authToken";
const tokenType = "tokenType";
const userId = "userId";
const firstName = "firstName";
const lastName = "lastName";

app.directive ('loadingSrc', function () {
    return {
        restrict: 'A',
        link: function (scope, element, attr) {
            element[0].src = "img/progress.gif";
            attr.$observe ('imageSrc', function (value) {
                var img = new Image ();
                img.src = value;
                img.onload = function () {
                    img.onload = null;
                    if (element[0].src !== img.src) {
                        element[0].src = img.src;
                    }
                };

            });

        }
    };

});
