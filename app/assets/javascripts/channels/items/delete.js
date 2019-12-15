$(function(){
  $(document).on("turbolinks:load", function(){
    //各itemを移動出来るように
    $(".items").sortable({
      items: ".item",
      scroll: false
    });
    // itemがドロップされた時にイベント発火
    $(".trash-box").droppable({
      accept: ".item",
      tolerance: "touch",
      activeClass: "move-trash",
      drop: function(e, ui){
        e.preventDefault();
        var delete_message = confirm("削除してもよろしいですか？");
        if(delete_message == true){
          //ドロップされたitem要素を取得。jQueryオブジェクトからDOM要素を取り出す
          var delete_item = ui.draggable[0];
          //idを取得。
          var delete_ID = ui.draggable.data("item-id");
          var url = "/items/" + delete_ID;
          $.ajax({
            url: url,
            type: "POST",
            data: {id: delete_ID, "_method": "DELETE"},
            dataType: "json"
          })
          .done(function(data){
            delete_item.remove();
          })
          .fail(function(){
            alert("エラー");
          })
        }
      }
    })
  });
});
