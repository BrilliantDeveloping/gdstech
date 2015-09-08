angular.module "skeleton"
  .run ($rootScope, $state, $auth, $window, $mdToast, $animate) ->
    
    $rootScope.$state = $state
    
    # alerts
    toastAlert = (toastContent) ->
      $window.scrollTo(0,0)
      $mdToast.show $mdToast.simple().content(
        toastContent).position(
        'top right'
        ).hideDelay(3000)
        
    $rootScope.$on 'auth:login-success', (e, user) ->
      $state.go "main"
      toastAlert('Welcome '+if user.name then user.name else user.email)
        
    $rootScope.$on 'auth:logout-success', (e) ->
      $state.go "main"
      toastAlert('Successfully logged out')
      
    $rootScope.$on 'auth:login-error', (e, reason) ->
      $state.go "login"
      toastAlert(reason.errors[0])
      
    $rootScope.$on 'auth:registration-email-error', (e, reason) ->
      toastAlert('Double-check your email and password')
      
    $rootScope.$on 'auth:validation-error', (e, reason) ->
      toastAlert(reason.errors[0])
        