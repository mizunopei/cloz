$(function(){
  $(document).on("turbolinks:load", function(){
    $(".item").on("click", function(){
      // $(".item__info").hide();
      $(this).find(".item__info").toggle("slow");
    })
  })
})