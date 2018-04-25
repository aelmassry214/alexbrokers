# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#    $(document).on 'ready page:load', ->


jQuery = ->
	provinces = $('#ProvinceID').html()
	emptyOption = $('<option />').attr('value', '');
	console.log(provinces);
	$('#GovernorateID').ready ->
		governorate = $('#GovernorateID :selected').text()
		options = $(provinces).filter("optgroup[label='#{governorate}']").prepend(emptyOption).html()
		console.log(governorate);
		console.log(options);
		if options
			$('#ProvinceID').html(options)
		else
			$('#ProvinceID').empty()

	$('#GovernorateID').change ->
		governorate = $('#GovernorateID :selected').text()
		options = $(provinces).filter("optgroup[label='#{governorate}']").prepend(emptyOption).html()
		console.log(governorate);
		console.log(options);
		if options
			$('#ProvinceID').html(options)
		else
			$('#ProvinceID').empty()
			
# ---------------------- to be used with the search partial ---------------------------			
	searchProvinces = $('#searchProvinceID').html()
	console.log(searchProvinces);
	$('#searchGovernorateID').ready ->
		searchGovernorate = $('#searchGovernorateID :selected').text()
		searchOptions = $(searchProvinces).filter("optgroup[label='#{searchGovernorate}']").prepend(emptyOption).html()
		console.log(searchGovernorate);
		console.log(searchOptions);
		if searchOptions
			$('#searchProvinceID').html(searchOptions)
		else
			$('#searchProvinceID').empty()

	$('#searchGovernorateID').change ->
		searchGovernorate = $('#searchGovernorateID :selected').text()
		searchOptions = $(searchProvinces).filter("optgroup[label='#{searchGovernorate}']").prepend(emptyOption).html()
		console.log(searchGovernorate);
		console.log(searchOptions);
		if searchOptions
			$('#searchProvinceID').html(searchOptions)
		else
			$('#searchProvinceID').empty()


$(document).ready(jQuery);
$(document).on('turbolinks:load', jQuery);