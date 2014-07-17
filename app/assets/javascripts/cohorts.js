$(document).ready(function() {

    $(".makeMeDraggable").draggable({
      revert: "invalid",
    	snap: '.makeMeDroppable'
    });

    $(".makeMeDroppable").droppable({
      drop: handleDropEvent,
    });


  function handleDropEvent( event, ui ) {
    var draggable = ui.draggable;

  }
});
