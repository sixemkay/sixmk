"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("HomeController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello home.")


  ])
