angular.module( 'app' ).controller
  topNavController: ($rootScope, $scope, $location) ->

    # Is this still being used?
    $scope.menuOpen = false
    $rootScope.modalOpen = false