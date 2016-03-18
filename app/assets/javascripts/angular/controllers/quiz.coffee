"use strict"

sixmkAppControllersModule = angular.module("sixmkApp.controllers")

sixmkAppControllersModule.controller("QuizController",
  [ "$scope", 
  (  $scope ) ->


    _self = this


    $scope.questions = gon.furniture_questions_set['questions']
    $scope.results = gon.furniture_questions_set['results']


    _self.results_hash = {}
    _self.updateResultsSelectedHash = ->
      for question in $scope.questions
        value = $("input[name=#{question.answer_key}]:checked", '#questions').val()
        if _self.results_hash[value]?
          _self.results_hash[value] += 1
        else
          _self.results_hash[value] = 1


    $scope.matchingResults = ->
      $scope.results.filter (result) -> result.value_count == _self.results_hash[result.value]


    $scope.showResults = ->
      _self.updateResultsSelectedHash()
      $('#questions').hide()
      $('#results').show()
      null


    $scope.initialize = ->
      console.log("hello quiz. questions: #{$scope.questions.length}")



  ])
