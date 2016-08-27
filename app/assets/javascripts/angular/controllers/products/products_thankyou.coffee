"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ProductsThankyouController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello products thankyou.")


  ])
