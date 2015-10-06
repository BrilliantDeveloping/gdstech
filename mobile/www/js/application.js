angular.module('skeletonm', ['ionic', 'ngCordova']);



angular.module("skeletonm").run(function($ionicPlatform, $rootScope) {
  $rootScope.test = "testin' stuff";
  $ionicPlatform.ready(function() {
    if (window.cordova && window.cordova.plugins.Keyboard) {
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
    }
    if (window.StatusBar) {
      StatusBar.styleDefault();
    }
  });
});
