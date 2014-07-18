$(document).ready(function() {


  $(".student-box").sortable({
    connectWith: $('.group-box')
  }).sortable();

  $(".group-box").sortable({
    // drop: handleDropEvent,
    connectWith: $('.student-box')
  });

  // function handleDropEvent( event, ui ) {
  //   var draggable = ui.draggable;
  // }
});
