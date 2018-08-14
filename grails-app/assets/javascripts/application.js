// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better
// to create separate JavaScript files as needed.
//
//= require jquery-3.3.1
//= require all.min.js
//= require bootstrap.bundle
//= require bootstrap
//
//= require jquery.easing.min
//= require Chart.bundle.min
//= require sb-admin
//= require datatables.min
//= require dataTables.bootstrap4
//= require jquery.dataTables
//= require_self

if (typeof jQuery !== 'undefined') {
    (function($) {
        $(document).ajaxStart(function() {
            $('#spinner').fadeIn();
        }).ajaxStop(function() {
            $('#spinner').fadeOut();
        });
    })(jQuery);
}
