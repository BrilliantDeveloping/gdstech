angular.module "skeleton"
  .controller 'AccountCtrl', ($scope, Account) ->
    
    Account.get(action: 'orders').then (orders) -> 
      $scope.orders = orders
    Account.get(action: 'settings').then (settings) -> 
      $scope.settings = settings
    
    $scope.pageTitle = 'Account'
    
    $scope.panelItems = [
      { 
        label: 'Profile'
        state: 'account.profile'
      }
      { 
        label: 'Settings'
        state: 'account.settings'
      }
      { 
        label: 'Orders'
        state: 'account.orders'
      }
    ]
   
    