(function() {

	angular.module('MyNotes')
	.directive('noteCard', function() {
		return {
			/* Currently scope is shared.*/
			/*scope: {}, Dangerous.... */
			restrict: 'E',
			templateUrl: '/notes/templates/note_card',
			link: function(scope, element, attrs) {

				// TODO: placeholder for now

				// clean up gracefully
				element.on('$destroy', function() {		      
					// TODO: placeholder for now		      
		    });

			}
		};
	})
	

}());