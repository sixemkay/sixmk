"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("SiteController",
  [ "$scope", 
  (  $scope ) ->

    $scope.windowLocation = (url) ->
      window.location = url
    
    $scope.initialize = ->
      console.log("hello site.")


  ])
