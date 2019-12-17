$(function(){
  $(document).on("turbolinks:load", function(){
  //各itemの並び替えを可能にする
    $(".items").sortable({
      // itemの並び替え処理が停止した時にイベント発火
      update: function(e, ui){
        var sort_item = ui.item;
        var sort_data = sort_item.data();
        // paramsにてmethod、row_order_positionのデータを送る
        var params = {_method: "PUT"};
        params[sort_data.model_name] = {row_order_position: sort_item.index()}
        $.ajax({
          url: sort_data.update_url,
          type: "POST",
          data: params,
          dataType: "json"
        })
      }
    });
  })
})