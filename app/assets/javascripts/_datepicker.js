// $('.datetimepicker').datepicker({
//   format: "dd/mm/yyyy"
// });



$(document).ready(function () {
  $('.datetimepicker').datepicker({
    format: "dd/mm/yyyy"
  });

  $('#end_date').on('change', function() {
    var start = $('#start_date').datepicker('get')
    var end = $('#end_date').datepicker('get')
    var time = 24*60*60*1000
    var diffDays = Math.round(Math.abs((end - start)/(time)))
    var dailyprice = $("#gadgetprice").text().replace("€","")
    var totalprice = dailyprice * diffDays
    $("#price").text(totalprice+" €");
  });
});
