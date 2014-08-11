require 'angular'

require 'angular-ui-router'

#=====================================================================

module.exports = angular.module 'xoWebApp.newSr', [
  'ui.router'
]
  .config ($stateProvider) ->
    $stateProvider.state 'SRs_new',
      url: '/srs/new/:container'
      controller: 'NewSrCtrl'
      template: require './view'
  .controller 'NewSrCtrl', ($scope, $stateParams, xo) ->
    $scope.$watch(
      -> xo.revision
      ->
        $scope.container = xo.get $stateParams.container
    )

