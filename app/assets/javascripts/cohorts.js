<<<<<<< HEAD

$(document).ready(function() {

    $(".makeMeDraggable").draggable({
=======
$(document).ready(function() {

    $(".makeMeDraggable").draggable({
      revert: "invalid",
>>>>>>> master
    	snap: '.makeMeDroppable'
    });

    $(".makeMeDroppable").droppable({
      drop: handleDropEvent,
    });


  function handleDropEvent( event, ui ) {
    var draggable = ui.draggable;
<<<<<<< HEAD
    alert("Who loves pizza!!!")
=======

>>>>>>> master
  }
});
