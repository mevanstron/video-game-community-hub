$(document).ready(function() {
  addVideoGames();
  addVideoGame();
});

function addVideoGame() {
  //adds videogame content to video game show page.
  let vgPathArray = $(document.location)[0]["pathname"].split('/');
  $.get(`/video_games/${vgPathArray[vgPathArray.length - 1]}`, function(data) {
    $("#vg_title").append(data["title"])
    $("#vg_release_year").append(data["release_year"])
    $("#vg_console").append(data["console"])

  }, "json");
}

function addVideoGames() {
  //creates table rows and columns that house individual video game links and add to collection buttons.
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
      //iterates through all videogames checking to see if user has the game.
      addVideoGameButton(data, i);
    }
  }, "json");
}

function addVideoGameButton(json, videoGame) {
  let userHasGame = false;
  //checks all users for videogame for match to current user
  for (var i = 0; i < json[videoGame]["users"].length; i++)
  {
    if (json[videoGame]["users"][i]["id"] == $("#userId")[0].value)
    {
      userHasGame = true;
    }
  }
  //if no match was detected to current user, the add to collection button is added.
  if (userHasGame == false) {
    $(`#vg_${json[videoGame]["id"]}_button_td`).append(
      `<button onClick="addToCollection()">Add to Collection</button>`
    )
  }

  function addToCollection() {
    //listens for click event to add videogame to user's collection
  }
}
