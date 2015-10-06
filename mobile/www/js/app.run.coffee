angular.module "skeletonm"
  .run ($ionicPlatform, $rootScope) ->
    
    $rootScope.test = "testin' stuff"
    
    $ionicPlatform.ready ->
      # Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
      # for form inputs)
      if window.cordova and window.cordova.plugins.Keyboard
        cordova.plugins.Keyboard.hideKeyboardAccessoryBar true
      if window.StatusBar
        StatusBar.styleDefault()
      return
    return