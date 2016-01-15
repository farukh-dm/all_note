(function() {

	angular.module('MyNotes')
	.controller('NotesIndexController', ['$scope', '$http', 'NoteService',
	function($scope, $http, NoteService) {

		$scope.notes = [];

		NoteService.all()
		.then(
			function successCallback(response) {
				$scope.notes = response.data;				
	  	}, 
	  	function errorCallback(response) {
	  	//console.log("status = ", response.status);
	  	}
	  );

	}]);

})();