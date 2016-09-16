"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ProductsThankyouController",
  [ "$scope", 
  (  $scope ) ->

    $scope.product = gon.product
    
    $scope.images = gon.images
    $scope.mainImage = $scope.images[0]


    $scope.loadImage = (url) ->
      window.open(url, '_blank')


    $scope.showImage = (image) ->
      $scope.mainImage = image


    $scope.initialize = ->
      console.log("hello products thankyou.")


  ])
