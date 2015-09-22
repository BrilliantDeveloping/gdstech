angular.module "skeleton"
  .factory "Post", (RailsResource) ->
    class Post extends RailsResource
      @configure url: "/api/v1/posts", name: "post"
      
  .factory "Product", (RailsResource) ->
    class Product extends RailsResource
      @configure url: "/api/v1/products", name: "product"