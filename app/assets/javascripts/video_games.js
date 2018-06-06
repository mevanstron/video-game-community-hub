$(document).ready(function() {
  $.get("/video_games", function(data) {
    for(var i = 0; i < data.length; i++) {
      $("#vg_tbody").append(
        `<tr id="vg_${data[i]["id"]}_tr">
          <td>
            <a href="/video_games/${data[i]["id"]}">${data[i]["title"]}</a>
          </td>
          <td id="vg_${data[i]["id"]}_button_td"></td>
        </tr>`
      );
      var userHasGame = false;
      for (var k = 0; k < data[i]["users"].length; k++)
      {
        
        if (data[i]["users"][k]["id"] == $("#userId")[0].value)
        {
          userHasGame = true;
        }
      }
      if (userHasGame == false) {
        $(`#vg_${data[i]["id"]}_button_td`).append(
          `<button>Add to Collection</button>`
        )
      }
    }
  }, "json");
});
