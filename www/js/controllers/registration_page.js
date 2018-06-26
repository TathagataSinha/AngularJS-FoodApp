
  controllers.controller('RegistrationController', function($scope) {

    $scope.alert = function(message) {
      ons.notification.alert(message);
    };

    $scope.openMallPage = function (val){
          mainNavi.pushPage('partials/landing.html');
    }
    $scope.user = {
       password: "",
       confirmPassword: ""
     };

    $scope.check_pass = function () {
      if(document.getElementById('passwordid').value.length < 6 || document.getElementById('passwordid').value.length > 15){
          ons.notification.toast('Password length should be between 6-15', {timeout: 2000});
      }

    else if (document.getElementById('passwordid').value ==
            document.getElementById('confirm_passwordid').value) {
      //  document.getElementById('submit').disabled = false;
    }


     else {
        ons.notification.toast('Invalid Password', {timeout: 2000});
    //    document.getElementById('submit').disabled = true;
    }
}
  });
