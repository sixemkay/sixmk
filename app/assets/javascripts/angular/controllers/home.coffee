"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("HomeController",
  [ "$location", "$scope", "smoothScroll", 
  (  $location,   $scope,   smoothScroll ) ->


    $scope.initialize = ->
      if $location.search().target?
        smoothScroll( document.getElementById( "#{$location.search().target}" ) )

  ])
