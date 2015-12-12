angular.module "skeleton"
  .config ($mdThemingProvider) -> 
    
   #  Create custom palettes:
   $mdThemingProvider.definePalette 'gds-green',
     '50': '#00b588'
     '100': '#00b588'
     '200': '#00b588'
     '300': '#00b588'
     '400': '#00b588'
     '500': '#00b588'
     '600': '#00b588'
     '700': '#00b588'
     '800': '#00b588'
     '900': '#00b588'
     'A100': '#00b588'
     'A200': '#00b588'
     'A400': '#00b588'
     'A700': '#00b588'
     'contrastDefaultColor': 'light'
      
   # Change default theme:  
   $mdThemingProvider.theme('default')
     .primaryPalette 'gds-green'