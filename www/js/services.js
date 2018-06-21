/**
 * This service is used for passing value between controllers
 * **/
services.factory('msgBusService', ['$rootScope', function ($rootScope) {
    var msgBus = {};

    msgBus.emitMsg = function (msg, msgData) {
        msgBus.data = msgData;
        $rootScope.$emit(msg);
    };
    msgBus.onMsg = function (msg, scope, func) {
        var unbind = $rootScope.$on(msg, func);
        scope.$on('$destroy', unbind);
    };

    return msgBus;
}]);


/**
 * This service is used for maintaining states across controller change
 **/
services.factory('globalVarService', function () {
    var shopStorage = {};
    shopStorage.selShop = '';
    return shopStorage;

});

services.factory('commonService', ['$filter', '$http', 'globalVarService', 'msgBusService','$rootScope',
    function ($filter, $http, globalVarService, msgBusService, $rootScope) {
    return {

        isUndefinedOrNull: function (val) {
            return angular.isUndefined(val) || val === null || val === '' || (!(angular.isUndefined(val) || val === null) && val.trim === '');
        },

    httpRequest: function (requestType, requestMethod, params, header) {

            if (window.localStorage.getItem (authToken) && window.localStorage.getItem (tokenType).trim() != '') {
                $http.defaults.headers.common.Authorization = window.localStorage.getItem (tokenType) + " " + window.localStorage.getItem (authToken);
            }
            var promise;
            if (requestType === httpGET) {
                promise = $http({
                    method: requestType,
                    url: baseUrl + requestMethod,
                    params: params,
                    headers: header,
                    timeout: 60000
                });

            } else {
                promise = $http({
                    method: requestType,
                    url: baseUrl + requestMethod,
                    data: params,
                    headers: header,
                    timeout: 60000
                });
            }
            promise.error(function (dataFromServer, status, headers, config) {
                if(!this.isUndefinedOrNull(PrgsBar)){
                    PrgsBar.hide();
                }

                if(status==401){
                    setTimeout(function(){
                        window.localStorage.removeItem ("recordpassword");
                        window.localStorage.removeItem ("useremail");
                        window.localStorage.removeItem ("userpassword");
                        window.localStorage.removeItem (localStorageAuthToken);

                        ons.notification.alert({
                            message: dataFromServer.Message,
                            title: 'ShoppyMax',
                            buttonLabel: 'OK',
                            animation: 'default',
                            callback: function (index) {
                                if (index === 0) {
                                    mainNavi.resetToPage('partials/login.html');
                                }
                            }
                        });
                    }, 1000);
                }
            });

            return promise;
        }
    }
}]);
