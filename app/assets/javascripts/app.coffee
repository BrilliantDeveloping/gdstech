angular.module 'skeleton', [
  'templates',
  'ui.router'
]

angular.module "skeleton"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "main",
        url: "/"
        templateUrl: 'assets/main/main.html'