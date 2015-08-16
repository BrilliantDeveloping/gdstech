angular.module "skeleton"
  .directive 'navbar', ->

    NavbarController = () ->
      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      vm.navigation  = [
        {
          'link':'Link 1'
          'state':'main'
          'order':1
        },
        {
          'link':'Link 2'
          'state':'main'
          'order':2
        },
        {
          'link':'Link 3'
          'state':'main'
          'order':3
        }
      ]
      return

    directive =
      restrict: 'E'
      templateUrl: 'assets/components/navbar/navbar.html'
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
