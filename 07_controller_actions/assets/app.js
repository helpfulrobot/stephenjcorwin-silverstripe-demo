(function($){
	ControllerActionPage = {
		btn: $('.refresh-btn'),
		target: $('.refresh-target'),
		form: $('form'),
		AJAX: null,
		init: function() {
			this.btn.click($.proxy(this.doRefresh, this));
			this.form.submit($.proxy(this.doSubmit, this));
		},

		doSubmit: function(e) {
			e.preventDefault();

			var AJAX = $.ajax({
			    type: 'POST',
			    url: linkURL + 'setobj',
			    data: this.form.serialize()
			});

			AJAX.done($.proxy(this.onRefreshResult, this));
		},

		doRefresh: function(e) {
			e.preventDefault();

			var AJAX = $.ajax({
			    type: 'GET',
			    url: linkURL + 'getobj'
			});

			AJAX.done($.proxy(this.onRefreshResult, this));
		},

		onRefreshResult: function(result, request) {
			this.target.html(result);
		}
	};

	ControllerActionPage.init();
	return ControllerActionPage;
})(jQuery);