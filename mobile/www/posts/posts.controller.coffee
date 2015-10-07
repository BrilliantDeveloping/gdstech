angular.module "skeletonm"
  .controller "PostsCtrl", ($scope, Post) ->
    Post.query().then (posts) -> $scope.posts = posts
    