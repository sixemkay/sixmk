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

    $(".sub-menu").focusout( ->
      $('#selecteddiv').animate( ->
        display: "none"
      )
    )

    $scope.windowLocation = (url) ->
      window.location = url
    
    $scope.initialize = ->
      console.log("hello site.")


  ])
