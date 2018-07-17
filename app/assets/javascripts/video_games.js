document.addEventListener("turbolinks:load", function() {
  addVideoGames();
  addVideoGame();

  VideoGame.templateSource = $("#video_game_template").html();
  VideoGame.template = Handlebars.compile(VideoGame.templateSource);
})

function VideoGame(attributes) {
  this.title = attributes.title;
  this.id = attributes.id;
  this.release_year = attributes.release_year;
  this.console = attributes.console;
  this.users = attributes.users;
  this.tags = attributes.tags;
}

VideoGame.prototype.renderTR = function() {
  return VideoGame.template(this);
}

function addVideoGame() {
  //adds videogame content to video game show page.
  let vgPathArray = $(document.location)[0]["pathname"].split('/');
  $.get(`/video_games/${vgPathArray[vgPathArray.length - 1]}`, function(data) {
    $("#vg_title").append(data["title"])
    $("#vg_release_year").append(data["release_year"])
    $("#vg_console").append(data["console"])

    for (var i = 0; i < data["tags"].length; i++) {
      $("#vg_tags").append(
        ` <a href="/tags/${data["tags"][i]["id"]}">${data["tags"][i]["name"]}</a>`
      );
      if (i != data["tags"].length - 1) {
        $("#vg_tags").append(" |");
      }
    }
  }, "json");
}

function addVideoGames() {
  //creates table rows and columns that house individual video game links and add to collection buttons.
  $.get("/video_games", function(data) {
    for (var i = 0; i < data.length; i++) {
      let videoGame = new VideoGame(data[i]);
      let videoGameTr = videoGame.renderTR();

      $("#vg_tbody").append(videoGameTr)


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
