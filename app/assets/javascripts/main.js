console.log("main.js connected")

document.addEventListener("DOMContentLoaded", function(event) {
  console.log("DOM fully loaded and parsed");


  $('#appoint_speciality').change(function (event) {

    // for next change
    $(".toggle_doctors").removeClass("hidden")
    $(".toggle_doctors").addClass("hidden")

    $("#appoint_doctor_id ."+$("#appoint_speciality").val()).removeClass("hidden")
    $($("#appoint_doctor_id option")[0]).text("Select doctor")

  })

});
//
//
// $("#appoint_speciality").change(updateDoctors())
//
// function updateDoctors() {
//   console.log("changed")
// }
