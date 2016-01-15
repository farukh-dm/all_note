(function() {

angular.module('MyNotes')
.controller('NotesShowController', ['$scope', '$routeParams', 'NoteService', 
	function($scope, $routeParams, NoteService) {

		$scope.note = {};
		$scope.hasError = false;

		NoteService.show($routeParams.id)
		.then(
			function successCallback(response) {
				$scope.hasError = true;
				$scope.note = response.data;
			},
			function errorCallback(response) {
				$scope.hasError = true;
		  	$scope.errorMessage = 'Oh snap! Looks like the requested resource is not avaialble.';
			});
	}]);

})();