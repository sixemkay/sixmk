"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("PortfolioController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello portfolio.")


  ])
