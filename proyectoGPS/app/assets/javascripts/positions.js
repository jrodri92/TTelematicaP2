// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(function(){
  $("#new_position").submit(function(){
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');
    var data = $(this).serializeArray();

    $.ajax({
      method: method,
      url: action,
      data: data,
      dataType: 'script'
    });
  });
});
