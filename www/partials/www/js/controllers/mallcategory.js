
  controllers.controller('MallCategoryPageController', function($scope) {
    $scope.changeTab = function () {
      document.getElementById('tabbar').setActiveTab(1);
    };
    $scope.changeButton = function () {
      document.getElementById('segment').setActiveButton(1);
    };
    $scope.logIndexes = function () {
      console.log('active button index', document.getElementById('segment').getActiveButtonIndex());
      console.log('active tab index', document.getElementById('tabbar').getActiveTabIndex());
    };
    $scope.openMallPage = function (val){
          mainNavi.pushPage('partials/landing.html');
    }

  });
