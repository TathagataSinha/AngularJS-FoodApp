
  controllers.controller('RegistrationController', function($scope) {

    $scope.alert = function(message) {
      ons.notification.alert(message);
    };

    $scope.openMallPage = function (val){
          mainNavi.pushPage('partials/mall_page.html');
    }

  });
