(function() {

	angular.module('MyNotes')
	.controller('UsersIndexController', ['$scope', '$http', 'UserService', 
	function($scope, $http, UserService) {

		$scope.users = [];
		
		UserService.all()
		.then(
			function successCallback(response) {
				$scope.users = response.data;	    
	  	}, 
	  	function errorCallback(response) {
	  	//console.log("status = ", response.status);
	  	}
	  );
			
	}]);

})();