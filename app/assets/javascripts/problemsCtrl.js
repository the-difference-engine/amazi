(function() {
  "use strict";

  angular.module("app").controller("problemsCtrl", function($scope, $http) {
    window.$scope = $scope;
    $scope.init = function() {
      $http.get("api/v1/problems.json").then(function(response) {
        $scope.problems = response.data;
      });
    }
    

  });
}());