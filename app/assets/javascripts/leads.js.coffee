# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

enable_submit = ->
  disabled = !name_valid() || !email_valid()
  if disabled then $('#submit_lead').attr('disabled', disabled) else $('#submit_lead').removeAttr('disabled')

name_valid = ->
  return $('#lead_name').val() != ''

email_valid = ->
  return $('#lead_email').val() != ''

$(document).ready ->
  $("#lead_name").on('keyup', enable_submit)
  $("#lead_email").on('keyup', enable_submit)
  $('#submit_lead').attr('disabled', 'disabled')
