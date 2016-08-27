"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ProductsShowController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello products show.")


  ])
