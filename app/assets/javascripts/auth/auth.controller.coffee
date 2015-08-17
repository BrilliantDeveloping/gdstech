angular.module "skeleton"
  .controller 'AuthCtrl', ($scope, $location, $auth) ->
    
    # # Register
    $scope.handleRegBtnClick = ->
      $auth.submitRegistration($scope.registrationForm).then ->
        $auth.submitLogin
          email: $scope.registrationForm.email
          password: $scope.registrationForm.password
        return
      return
    return
    