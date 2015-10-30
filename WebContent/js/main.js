
// ---------- Preloader ----------
(function($) {
	"use strict";
	$(window).load(function() {
		$("#loader").fadeOut();
		$("#preloader").delay(1000).fadeOut("slow");
	});
})(jQuery);

// ---------- tooltip & popover ----------
jQuery(document).ready(function(){
jQuery('.lt_tooltip').tooltip();
jQuery('.lt_popover').popover();
})	

// paginations
  $(function() {
  
	$('#pagination_sm').pagination({
        totalPages: 10,
        visiblePages: 4,
        onPageClick: function (event, page) {
            $('#page-content_sm').text('Page ' + page);
        }
    })

    $('#pagination_nm').pagination({
        totalPages: 8,
        visiblePages: 5,
        onPageClick: function (event, page) {
            $('#page-content_nm').text('Page ' + page);
        }
    });	

    $('#pagination_lg').pagination({
        totalPages: 6,
        visiblePages: 2,
        onPageClick: function (event, page) {
            $('#page-content_lg').text('Page ' + page);
        }
    })  

  });  
  
 // Panels
(function( $ ) {

	$(function() {
		$('.panel')
			.on( 'click', '.panel-actions a.fa-caret-up', function( e ) {
				e.preventDefault();

				var $this,
					$panel;

				$this = $( this );
				$panel = $this.closest( '.panel' );

				$this
					.removeClass( 'fa-caret-up' )
					.addClass( 'fa-caret-down' );

				$panel.find('.panel-body, .panel-footer').slideDown( 200 );
			})
			.on( 'click', '.panel-actions a.fa-caret-down', function( e ) {
				e.preventDefault();

				var $this,
					$panel;

				$this = $( this );
				$panel = $this.closest( '.panel' );

				$this
					.removeClass( 'fa-caret-down' )
					.addClass( 'fa-caret-up' );

				$panel.find('.panel-body, .panel-footer').slideUp( 200 );
			})
			.on( 'click', '.panel-actions a.fa-times', function( e ) {
				e.preventDefault();

				var $panel,
					$row;

				$panel = $(this).closest('.panel');

				if ( !!( $panel.parent('div').attr('class') || '' ).match( /col-(xs|sm|md|lg)/g ) && $panel.siblings().length === 0 ) {
					$row = $panel.closest('.row');
					$panel.parent('div').remove();
					if ( $row.children().length === 0 ) {
						$row.remove();
					}
				} else {
					$panel.remove();
				}
			});
	});

})( jQuery );


 // knob
$(function() {
    $(".dial").knob(); // knob
});
