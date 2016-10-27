(function() {
  "use strict";

  angular.module("app").controller("problemsCtrl", function($scope, $http) {
    window.$scope = $scope;
    $scope.init = function() {
      $http.get("api/v1/problems.json").then(function(response) {
        $scope.allProblems = response.data
        $http.get("api/v1/problems.json?active=true").then(function(response) {
          $scope.activeProblems = response.data;
          $scope.toggleInactive();
        })
      });
    }
    
    $scope.toggleByAttribute = function(attribute) {
      if (attribute == $scope.orderAttribute) {
        $scope.descending = !$scope.descending;
      } else {
        $scope.orderAttribute = attribute;
      }
    }
    $scope.toggleActive = function(problemId, index) {
      $http.delete("/api/v1/problems/" + problemId + ".json").then(function(response) {
        $scope.init();
      });
    }

      $scope.toggleInactive = function() {
        if ($scope.showInactive == true) {
          $scope.problems = angular.copy($scope.allProblems);
        } else {
          $scope.problems = angular.copy($scope.activeProblems);
        }
      }
  });
}());


