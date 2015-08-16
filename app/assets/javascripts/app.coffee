angular.module 'skeleton', [
  'templates',
  'ui.router',
  'ng-token-auth'
]

angular.module "skeleton"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "main",
        url: "/"
        templateUrl: 'assets/main/main.html'