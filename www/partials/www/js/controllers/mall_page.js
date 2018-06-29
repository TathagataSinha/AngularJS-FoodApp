
  controllers.controller('PageController', function($scope) {
    $scope.MyDelegate = {
      configureItemScope : function(index, itemScope) {
        if (itemScope.item) {
          return;
        }
        itemScope.item = {
          title: 'City ' + (index + 1),
          desc: 'Noida,Uttar Pradesh'
        };
      },
      countItems : function() {
        return 12;
      },
      destroyItemScope: function(index, scope) {
      }
    };

    $scope.alert = function(index, itemScope) {
      ons.notification.alert('city' + (index + 1));
    };

    $scope.openMallPage = function (val){
          mainNavi.pushPage('partials/registration_page.html');
    }
  });
