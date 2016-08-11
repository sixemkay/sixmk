"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("ServicesController",
  [ "$scope", 
  (  $scope ) ->


    $scope.flyersCardsExpanded = false
    $scope.toggleFlyersCards = ->
      $scope.flyersCardsExpanded = !$scope.flyersCardsExpanded


    $scope.weddingsEventsExpanded = false
    $scope.toggleWeddingsEvents = ->
      $scope.weddingsEventsExpanded = !$scope.weddingsEventsExpanded


    $scope.businessGoodsExpanded = false
    $scope.toggleBusinessGoods = ->
      $scope.businessGoodsExpanded = !$scope.businessGoodsExpanded


    $scope.onlineAdsExpanded = false
    $scope.toggleOnlineAds = ->
      $scope.onlineAdsExpanded = !$scope.onlineAdsExpanded


    $scope.initialize = ->
      console.log("hello services.")


  ])
