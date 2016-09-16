"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ProductsShowController",
  [ "$sce", "$scope", 
  (  $sce,   $scope ) ->


    $scope.product = gon.product
    $scope.productDescription = $sce.trustAsHtml(gon.product["description"])

    $scope.images = gon.images
    $scope.mainImage = $scope.images[0]


    $scope.loadImage = (url) ->
      window.open(url, '_blank')


    $scope.showImage = (image) ->
      $scope.mainImage = image


    $scope.initialize = ->
      console.log("hello products show.")


  ])
