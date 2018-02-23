var app = angular.module('app', []);

app.controller('myCtrl', function($scope) {

	$scope.items = [
	                'Luca',
	                'Vins',
	                'Michele',
	                'Francesco',
	                'Aldo',
	                'Mario'
	                ];

	$scope.add = function() {
		$scope.items.push($scope.input);
		$scope.input = '';
	};

	$scope.remove = function(index) {
		$scope.items.splice(index, 1);
	};

});