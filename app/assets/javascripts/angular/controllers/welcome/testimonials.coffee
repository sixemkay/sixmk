"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("TestimonialsController",
  [ "$scope", 
  (  $scope ) ->

    $scope.initialize = ->
      console.log("hello testimonials.")


  ])
