/**
 * @ngdoc directive
 * @name folioApp.toggleDirective
 * @description
 */
angular.module('toggleDirective', []).directive('toggleDirective', function($rootScope, $sce) {
    return {
        restrict:               'E',
        replace:                false,
        templateUrl:            directivesURL + '/ToggleDirective/ToggleDirective.html',
        scope: {
            primaryContent:            '@',
            secondaryContent:          '@',
            icon:                      '@'
        },

        link: function($scope, $element) {

            /**
             *  FUNCTION: $scope.init()
             */
            $scope.init = function () {
                console.log('toggle-directive init!');
            };

            $scope.embedHtml = function(html) {
                return $sce.trustAsResourceUrl(html);
            };

            $scope.init();
        }
    };
});