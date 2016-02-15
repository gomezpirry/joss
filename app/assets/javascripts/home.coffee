# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

switchTabs = ->
  target_div = $(this).attr("data-target")

  # Remove the 'selected' class from all tabs
  $('.tabnav-tab').removeClass('selected')

  # Add the 'selected' class from all tabs
  $(this).addClass('selected')

  # Hide all the 'paper-list' divs
  $('.paper-list').addClass('hidden')

  # Show the 'target_div' paper list
  $('#' + target_div).removeClass('hidden')

$(document).on 'click', '.tabnav-tab', switchTabs
