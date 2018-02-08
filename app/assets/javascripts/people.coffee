# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', -> 
	$('.toggle-status').on 'change', (e) -> 
		element = $(this)
		data = $(this).data()
		token = $('meta[name="csrf-token"]').attr('content')
		$.ajax '/profile/' + data.id + '/toggle_status.json',
			type: 'PUT',
			headers: {'X-CSRF-Token': token},
			success: (data,textStatus,xhr) ->
				if data.active
					element.html('Enabled')
				else
					element.html('Disabled')
		e.preventDefault()

 
$(document).on 'turbolinks:load', -> 
  	$('#person').dataTable
	    sPaginationType: "full_numbers"
	    bJQueryUI: true
	    bProcessing: true
	    bServerSide: true
	    responsive: true
	    sAjaxSource: $('#person').data('source')