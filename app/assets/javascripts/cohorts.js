$(document).ready(function() {


  $(".student-box").sortable({
    connectWith: $('.group-box')
  }).sortable();

  $(".group-box").sortable({
    connectWith: $('.student-box'),

    receive: function(event, ui ){
      // var sortable = ui.sortable;
      // console.log(this.children[0].children[0].id);
      var student_ids = []

      // this.children.forEach(function(child) {
      //   var something = child.something;
      //   student_ids.push(child);
      // })
      for(i=0; i < this.children.length; i++){
        var child = this.children[i];
        student_ids.push($(child.children[0]).data("student-id"))
      };

       console.log(student_ids)
    }
  });

});
