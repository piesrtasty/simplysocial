angular.module( 'app' ).controller
  topNavController: ($rootScope, $scope, $location) ->
  
    $scope.newMessage = () ->
      console.log 'New Message'   