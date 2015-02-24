angular.module( 'app' ).controller
  topNavController: ($rootScope, $scope, $location) ->

    $scope.menuOpen = false

    $scope.newMessage = () ->
      console.log 'New Message'   