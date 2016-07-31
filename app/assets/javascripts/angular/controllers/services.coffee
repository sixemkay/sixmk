"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ServicesController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello services.")


  ])
