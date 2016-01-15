(function() {

	angular.module('MyNotes')
	.config(['$routeProvider', function($routeProvider) {

		$routeProvider
		.when('/notes', {
			templateUrl: '/notes/templates/index',
			controller: 'NotesIndexController',
			controllerAs: 'notesIndexCtrl'
		})
		.when('/notes/:id', {
			templateUrl: '/notes/templates/show',
			controller: 'NotesShowController',
			controllerAs: 'notesShowCtrl'
		})
		.when('/users', {
			templateUrl: '/users/templates/index',
			controller: 'UsersIndexController',
			controllerAs: 'usersIndexCtrl'
		})
		.when('/', {
			redirectTo: '/notes'
		})
		.otherwise({
			redirectTo: '/notes'
		});
		
	}]);

})();