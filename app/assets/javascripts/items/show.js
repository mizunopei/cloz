$(function(){
  $(document).on("turbolinks:load", function(){
    $(".item").on("click", function(){
      $(this).find(".item__info").toggle("slow");
    })
  })
})