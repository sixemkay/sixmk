"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ContactController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello contact.")


  ])
