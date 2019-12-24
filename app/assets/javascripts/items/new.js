$(function(){
  $(document).on("turbolinks:load", function(){
    $("#item-image").on("change", function(){
      //画像の情報を取得
      var file = $(this).prop("files")[0];

      //画像の表示
      var reader = new FileReader();
      reader.onload = function(){
        var image = $("<img>").attr("src", reader.result);
        $("#preview").html(image);
      }
      
      //画像の読み込み
      reader.readAsDataURL(file);
  })
})
});