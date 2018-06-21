
  controllers.controller('PageController', function($scope) {
    $scope.MyDelegate = {
      configureItemScope : function(index, itemScope) {
        if (itemScope.item) {
          return;
        }
        itemScope.item = {
          title: 'Item #' + (index + 1),
          desc: 'Bla bla bla bla...'
        };
      },
      countItems : function() {
        return 10;
      },
      destroyItemScope: function(index, scope) {
      }
    };

    $scope.alert = function(index, itemScope) {
      ons.notification.alert('Item #' + (index + 1));
    };

    $scope.openMallPage = function (val){
          mainNavi.pushPage('partials/meal_catagory2.html');
    }

  });
