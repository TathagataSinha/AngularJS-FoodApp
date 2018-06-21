controllers.controller('LoginCtrl', ['$scope', 'globalVarService',
    'commonService', 'msgBusService', '$rootScope', '$filter',
    function ($scope, globalVarService, commonService, msgBusService, $rootScope, $filter) {
        $(window).on("resize.doResize", function () {
            $scope.$apply(function () {
                $scope.windowHeight = window.innerHeight;
                $scope.keyBoardVisible = $scope.windowHeight < 400 ? true : false;
            });
        });

        $scope.login = function () {

            if(false){
            $scope.submitted = true;
            PrgsBar.show();
            var params = 'username=' + $scope.email + '&password=' + $scope.password + '&grant_type=password';
            var header = {'Content-Type': 'application/x-www-form-urlencoded'};
            window.localStorage.setItem("useremail", $scope.email);

            var loginPromise = commonService.httpRequest(httpPOST, methodLogin, params, header);
            loginPromise.success(function (dataFromServer, status, headers, config) {
                var data = dataFromServer;
                if ($scope.recordPassword) {
                    pushUserCredentials();
                }

                window.localStorage.setItem(userId, parseInt(data.userId));
                window.localStorage.setItem(firstName, data.firstName);
                window.localStorage.setItem(lastName, data.lastName);
                PrgsBar.hide();
                mainNavi.pushPage('partials/landing.html');

            });
            loginPromise.error(function (dataFromServer, status, headers, config) {
                PrgsBar.hide();
            });
          }
            else {
              mainNavi.pushPage('partials/mall_page.html',{data: {title: 'Page 2'}});
            }


        };



    }]);
