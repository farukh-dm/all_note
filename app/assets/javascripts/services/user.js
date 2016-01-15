(function() {

	angular.module('MyNotes')
	.factory('UserService', ['$http', function($http) {

		return {

			all: function() {
				return $http({method: 'GET', url: '/users.json'});
			},
			
			show: function(id) {
				return $http({method: 'GET', url: '/users/' + id + '.json'});
			}

		};

	}]);

})();