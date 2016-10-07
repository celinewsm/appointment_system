console.log("main.js connected")

$(document).on('turbolinks:load', function() {

  console.log("turbolinks loaded");


  $('#appoint_speciality').change(function (event) {

    // for next change
    $(".toggle_doctors").removeClass("hidden")
    $(".toggle_doctors").addClass("hidden")

    $("#appoint_doctor_id ."+$("#appoint_speciality").val()).removeClass("hidden")
    $($("#appoint_doctor_id option")[0]).text("Select doctor")

  })

});
