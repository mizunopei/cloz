$(function(){
  $(document).on("turbolinks:load", function(){
    // itemがドロップされた時にイベント発火
    $(".trash-box").droppable({
      accept: ".item",
      activeClass: "move-trash",
      drop: function(e, ui){
        e.preventDefault();
        var delete_message = confirm("削除してもよろしいですか？");
        if(delete_message == true){
          //ドロップされたitem要素を取得。jQueryオブジェクトからDOM要素を取り出す
          var delete_item = ui.draggable[0];
          //idを取得。
          var delete_ID = ui.draggable.data("item_id");
          var delete_url = "/items/" + delete_ID;
          $.ajax({
            url: delete_url,
            type: "POST",
            data: {id: delete_ID, "_method": "DELETE"},
            dataType: "json"
          })
          .done(function(data){
            delete_item.remove();
            location.reload();
          })
          .fail(function(){
            alert("エラー");
          })
        }
      }
    })
  });
});
