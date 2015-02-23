//= require active_admin/base

$(document).ready(function(){ 
  var dateFormat = $( ".datepicker" ).datepicker( "option", "dateFormat" ); 
  $( ".datepicker" ).datepicker( "option", "dateFormat", 'dd-mm-yy' ); 

  if($("#page_title").text() == "Ubicacions")
  {
  	$("#page_title").text("Ubicaciones");
  }

  if($("#page_title").text() == "Acercas")
  {
  	$("#page_title").text("Acerca");
  }

  if($("#page_title").text() == "Contactos")
  {
  	$("#page_title").text("Contacto");
  }

  if($("#page_title").text() == "Homes")
  {
  	$("#page_title").text("Home");
  }

  if($("#page_title").text() == "Product Categories")
  {
    $("#page_title").text("Categorías");
  }

}); 