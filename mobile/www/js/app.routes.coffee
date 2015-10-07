angular.module "skeletonm"
  .config ($stateProvider, $urlRouterProvider) ->
      
    $stateProvider
      .state "main",
        url: "/"
        templateUrl: "main/main.html"

      .state "posts",
        url: "/posts"
        templateUrl: "posts/posts.html"
        controller: 'PostsCtrl'
 
      # redirect invalid url routes to root
      $urlRouterProvider.otherwise '/'
 
