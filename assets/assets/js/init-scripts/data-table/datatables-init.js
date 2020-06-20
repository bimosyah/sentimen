(function ($) {
    //    "use strict";


    /*  Data Table
    -------------*/
	$('.class-datatable').DataTable();
   

    $('#export-datatable').DataTable({
		
        dom: "<'float-left w-100 mb-3'B><'float-left'l>frtip",
        lengthMenu: [[10, 25, 50, -1], [10, 25, 50, "All"]],
        buttons: ['excel'],
    });


	$('#clean-datatable').DataTable({
        buttons: ['excel'],
    });

	$('#row-select').DataTable( {
        initComplete: function () {
				this.api().columns().every( function () {
					var column = this;
					var select = $('<select class="form-control"><option value=""></option></select>')
						.appendTo( $(column.footer()).empty() )
						.on( 'change', function () {
							var val = $.fn.dataTable.util.escapeRegex(
								$(this).val()
							);

							column
								.search( val ? '^'+val+'$' : '', true, false )
								.draw();
						} );

					column.data().unique().sort().each( function ( d, j ) {
						select.append( '<option value="'+d+'">'+d+'</option>' )
					} );
				} );
			}
		} );

})(jQuery);
