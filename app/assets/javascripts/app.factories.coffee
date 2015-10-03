angular.module "skeleton"
  .factory "Post", (RailsResource) ->
    class Post extends RailsResource
      @configure url: "/api/v1/posts", name: "post"
      
  .factory "Product", (RailsResource) ->
    class Product extends RailsResource
      @configure url: "/api/v1/products", name: "product"
      
  .factory 'Account', (RailsResource) ->
    class Account extends RailsResource
      @configure url: '/api/v1/account/{{action}}', name: 'account'