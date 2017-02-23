// $('.datetimepicker').datepicker({
//   format: "dd/mm/yyyy"
// });



$(document).ready(function () {
  $('.datetimepicker').datepicker({
    format: "mm/dd/yyyy"
  });

  $('#end_date').on('change', function() {
    var start =   new Date($("#start_date").val())
    var end = new Date($("#end_date").val())
    var time = 24*60*60*1000
    var diffDays = Math.round(Math.abs((end - start)/(time)))
    var dailyprice = $("#gadgetprice").text().replace("€","")
    var totalprice = dailyprice * diffDays
    $("#price").text(totalprice+" €");
  });
});
