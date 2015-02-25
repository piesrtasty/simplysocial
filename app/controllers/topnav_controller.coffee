angular.module( 'app' ).controller
  topNavController: ($rootScope, $scope, $location) ->

    $scope.menuOpen = false
    $rootScope.modalOpen = false

    $scope.newMessage = () ->
      $('body').addClass('modal-open')
      $rootScope.modalOpen = true