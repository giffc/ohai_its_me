$(document).ready(function() {    
  $('#control_panel_min').click(function () {
      $('#control_panel').slideToggle(500, function(){});
      console.log("testing");
  });
  $('#control_panel_close').click(function () {
      $('#control_panel').slideToggle(500, function(){});
  });
});

