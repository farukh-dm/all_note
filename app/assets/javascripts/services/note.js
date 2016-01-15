(function() {

	angular.module('MyNotes')
	.factory('NoteService', ['$http', function($http) {

		return {

			all: function() {
				return $http({method: 'GET', url: '/notes.json'});
			},
			
			show: function(id) {
				return $http({method: 'GET', url: '/notes/' + id + '.json'});
			}

		};

	}]);

})();