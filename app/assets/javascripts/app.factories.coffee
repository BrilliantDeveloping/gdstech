angular.module "skeleton"
  .factory "Post", (RailsResource) ->
    class Post extends RailsResource
      @configure url: "/api/posts", name: "post"