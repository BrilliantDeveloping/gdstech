angular.module "skeletonm"
  .factory "Post", (RailsResource) ->
    class Post extends RailsResource
      @configure url: "http://localhost:3000/api/v1/posts", name: "post"