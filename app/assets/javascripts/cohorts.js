$(document).ready(function() {

  $(".student-box").sortable({
      connectWith: $('.group-box'),
      cursorAt: {
          top: 37.5,
          left: 37.5
      }
  }).sortable();

  $(".group-box").sortable({
      cursorAt: {
          top: 37.5,
          left: 37.5
      },
      connectWith: $('.student-box'),


        receive: function(event, ui) {
            var student_ids = []
            var other_member_ids = []
            var other_students = $("#student_list ul li").children().children()

            for (i = 0; i < other_students.length; i ++){
                other_member_ids.push(other_students[i].className)
            };

            for (i = 0; i < this.children.length; i++) {
                var child = this.children[i];
                student_ids.push($(child.children[0]).data("student-id"))
            };
            var data = {
                group: student_ids,
                other_members: other_member_ids
            }

            $.post("/sort", data, function(response) {
                // console.log("Response is " + response);
            });

        }
    });

  $("#group_creation").click(function() {
      event.preventDefault;
      var cohortId = $(this).attr("class")
      var groupStudents = function(groupNumber) {
          var group = []
          var a = 0
          while ($(".group-box")[groupNumber].children[a] != undefined) {
              group.push($(".group-box")[groupNumber].children[a].className)
              a++;
          }
          return group
      }
      var group_hash = {}
      var groups_array = []
      var i = 0
      while (i < 6) {
         groups_array.push(groupStudents(i))
          i++
      }
      var groups_hash = {array: groups_array }
      console.log(groups_hash)

      var ajaxRequest = $.ajax({
          url: '/cohorts/' + cohortId + "/groups",
          type: "POST",
          data: groups_hash,
          success: function(response) {
            console.log("recieved response")
          }
      })
  })
});
