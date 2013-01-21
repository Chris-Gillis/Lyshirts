# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

enable_submit = ->
  disabled = !email_valid()
  if disabled then $('#submit_lead').attr('disabled', disabled) else $('#submit_lead').removeAttr('disabled')

email_valid = ->
  return $('#lead_email').val() != ''

$(document).ready ->
  $("#lead_email").on('keyup', enable_submit).focus()
  $('#submit_lead').attr('disabled', 'disabled')
