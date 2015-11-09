"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("SiteController",
  [ "$scope", 
  (  $scope ) ->

    $scope.pageName = gon.page_name

    $scope.windowLocation = (url) ->
      window.location = url
    
    $scope.initialize = ->
      console.log("hello site.")
      console.log("page name is: #{$scope.pageName}")


  ])
