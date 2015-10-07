angular.module('skeletonm', ['ionic', 'ngCordova', 'rails', 'ngAnimate', 'ngSanitize', 'ui.router']);

var extend = function(child, parent) { for (var key in parent) { if (hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
  hasProp = {}.hasOwnProperty;

angular.module("skeletonm").factory("Post", function(RailsResource) {
  var Post;
  return Post = (function(superClass) {
    extend(Post, superClass);

    function Post() {
      return Post.__super__.constructor.apply(this, arguments);
    }

    Post.configure({
      url: "http://localhost:3000/api/v1/posts",
      name: "post"
    });

    return Post;

  })(RailsResource);
});

angular.module("skeletonm").config(function($stateProvider, $urlRouterProvider) {
  $stateProvider.state("main", {
    url: "/",
    templateUrl: "main/main.html"
  }).state("posts", {
    url: "/posts",
    templateUrl: "posts/posts.html",
    controller: 'PostsCtrl'
  });
  return $urlRouterProvider.otherwise('/');
});

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

angular.module("skeletonm").controller("PostsCtrl", function($scope, Post) {
  return Post.query().then(function(posts) {
    return $scope.posts = posts;
  });
});
