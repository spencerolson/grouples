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
            // var sortable = ui.sortable;
            // console.log(this.children[0].children[0].id);
            var student_ids = []

            // this.children.forEach(function(child) {
            //   var something = child.something;
            //   student_ids.push(child);
            // })
            for (i = 0; i < this.children.length; i++) {
                var child = this.children[i];
                student_ids.push($(child.children[0]).data("student-id"))
            };
            var thinger = {
                students: student_ids
            }


            $.post("/sort", thinger, function(response) {
                console.log("Response is " + response);
            });

            // $.ajax({
            //    type: "GET",
            //    url: '/sort',
            //    data: student_ids,
            //    success: function(response){
            //      console.log(response);
            //    }
            // });
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
