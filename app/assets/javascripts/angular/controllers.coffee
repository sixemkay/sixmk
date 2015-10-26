"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers", [])

sixmkAppControllersModule.config([ "$httpProvider",
  ($httpProvider) ->
    # This header is required for all Ajax requests.
    $httpProvider.defaults.headers.common["X-Requested-With"] = "XMLHttpRequest"
  ])
