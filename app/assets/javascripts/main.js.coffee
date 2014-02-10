# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("time_sync_button").click(sendPacket(event));

function sendPacket(event) {
  event.preventDefault();

  $.post("/request", Date.now(), function(data) {
    console.log(data);
  });
}