app = angular.module 'app', ['ui.router', 'ngAnimate'] # modal

app.config ($stateProvider, $urlRouterProvider, $locationProvider) ->

	# Removing the # symbol from angular urls
  $locationProvider.html5Mode
    enabled: true,
    requireBase: false

  # For any unmatched url, redirect to root
  $urlRouterProvider.otherwise "/"

  # Set up the states
  $stateProvider.state("posts",
    url: "/"
    templateUrl: "html/posts"
    controller: "postsController"
  ).state("settings",
    url: "/settings"
    templateUrl: "html/settings"
    controller: "postsController"
  ).state("photos",
    url: "/photos"
    templateUrl: "html/photos"
    controller: "postsController"
  )

app.run ($rootScope) ->  
