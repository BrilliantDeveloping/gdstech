angular.module "skeleton", [
  'templates',
  'ui.router',
  'ng-token-auth',
  'flash'
]

angular.module "skeleton"
  .config ($stateProvider, $urlRouterProvider) ->
    $stateProvider
      .state "main",
        url: "/"
        templateUrl: 'assets/main/main.html'
        
      .state "login",
        url: "/login"
        templateUrl: 'assets/auth/login.html'
        controller: 'AuthCtrl'
        
      .state "register",
        url: "/register"
        templateUrl: 'assets/auth/register.html'
        controller: 'AuthCtrl'
              
      .state "logout",
        url: "/logout"
        templateProvider: ($auth, $state) ->
          if $auth.userIsAuthenticated()
            $auth.signOut()
            
      # redirect invalid url routes to root
      $urlRouterProvider.otherwise '/'
          
        
  .run ($rootScope, $state, Flash) ->
    $rootScope.$on 'auth:login-success', (e, user) ->
      $state.go "main"
      Flash.create('success', 'Welcome '+ 
        if user.name != null then user.name else user.email
      )
    $rootScope.$on 'auth:logout-success', (e) ->
      Flash.create('success', 'Successfully logged out')
      
    $rootScope.$on 'auth:login-error', (e, reason) ->
      Flash.create('danger', reason.errors[0])
      
    $rootScope.$on 'auth:registration-email-error', (e, reason) ->
      Flash.create('danger', 'Please double-check your email and password')
      
    $rootScope.$on 'auth:validation-error', (e, reason) ->
      Flash.create('danger', reason.errors[0])
      
      
      
      
      