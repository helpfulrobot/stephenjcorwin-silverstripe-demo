/**
 * @ngdoc directive
 * @name folioApp.toggleDirective
 * @description
 */
angular.module('pdfViewerDirective', []).directive('pdfViewerDirective', function($rootScope, $sce) {
    return {
        restrict:               'E',
        replace:                false,
        templateUrl:            directivesURL + '/PdfViewerDirective/PdfViewerDirective.html',
        scope: {
            url:                '@'
        },

        link: function($scope, $element) {

            /**
             *  FUNCTION: $scope.init()
             */
            $scope.init = function () {
                console.log('pdf-viewer-directive init!');
            };

            $scope.embedHtml = function(html) {
                return $sce.trustAsHtml(html);
            };

            $scope.init();
        }
    };
});