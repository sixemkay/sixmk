"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("SiteController",
  [ "$scope", 
  (  $scope ) ->

    $scope.pageName = gon.page_name

    $scope.navLinkFor = (string) ->
      if $scope.pageName == 'welcome_index'
        "#" 
      else
        "/##{string}"


    $scope.aboutMenuVisible = false

    $scope.showAboutMenu = ->
      $scope.aboutMenuVisible = true

    $scope.hideAboutMenu = ->
      $scope.aboutMenuVisible = false


    $scope.windowLocation = (url) ->
      window.location = url
    
    $scope.initialize = ->
      console.log("hello site.")


  ])
