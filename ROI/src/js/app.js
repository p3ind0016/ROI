angular.module('returnOfInvestment', ['ngRoute', 'firebase','returnOfInvestment.services','returnOfInvestment.controllers'])
.constant('fireBaseURL','https://returnofinvestment-4eebb.firebaseio.com/')
.config(function($routeProvider) {
  $routeProvider
    .when('/input', {
      controller:'',
      templateUrl:'input.html',
      resolve: resolveProjects
    })
    .when('/summary', {
      controller:'',
      templateUrl:'summary.html',
      resolve: resolveProjects
    })
    .when('/settings', {
      controller:'',
      templateUrl:'settings.html',
      resolve: resolveProjects
    })
    .otherwise({
      redirectTo:'/'
    });
})