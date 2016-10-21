(function() {
  "use strict";

  angular.module("app").controller("problemsCtrl", function($scope, $http) {
    window.$scope = $scope;
    $scope.init = function() {
      $http.get("api/v1/problems.json").then(function(response) {
        $scope.problems = response.data;
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

      });
    }

  });
}());