"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("SpecialEventsController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello design for special events.")


  ])
