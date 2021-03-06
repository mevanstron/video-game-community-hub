$(document).ready(function() {
  $.ajaxSetup({ cache: false });
  addVideoGames();

  $('#vg-sort-link').click(vgSort);

  VideoGame.templateSource = $("#video_game_template").html();
  VideoGame.template = Handlebars.compile(VideoGame.templateSource);
});

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

function addVideoGames() {
  //creates table rows and columns that house individual video game links and add to collection buttons.
  $.get("/video_games", function(data) {
    for (var i = 0; i < data.length; i++) {
      let videoGame = new VideoGame(data[i]);
      let videoGameTr = videoGame.renderTR();

      $("#vg_tbody").append(videoGameTr)

      addVideoGameButton(data, i);
    }
  }, "json");
}

function addVideoGameButton(json, videoGameIndex) {
//iterates through all videogames checking to see if user has the game.
  let vgId = videoGameIndex + 1;
  let userHasGame = false;
  //checks all users for videogame for match to current user
  for (var i = 0; i < json[videoGameIndex]["users"].length; i++) {
    if (json[videoGameIndex]["users"][i]["id"] == $("#userId")[0].value) {
      userHasGame = true;
    }
  }
  //if no match was detected to current user, the add to collection button is added.
  if (userHasGame == false) {
    let source = $("#add_to_collection_template").html();
    let template = Handlebars.compile(source);

    let context = {"vgId": vgId, "userId": userId };
    let html = template(context);

    $(`#vg_${vgId}_button_td`).append(html)

    addToCollection();
  }
}

function addToCollection() {
  //listens for click event to add videogame to user's collection
  $(`.add_vg`).unbind('submit').bind('submit', function(event) {
    event.preventDefault();

    let values = $(this).serialize();
    let posting = $.post('user_video_games', values);

    $(this).empty()
  });
}

function vgSort() {
  $.get("/video_games", function(data) {

    data.sort(function(a, b){
    var x = a["title"].toLowerCase();
    var y = b["title"].toLowerCase();
    if (x < y) {return -1;}
    if (x > y) {return 1;}
    return 0;
  });

  $("#vg_tbody").empty();
    for (var i = 0; i < data.length; i++) {
      let videoGame = new VideoGame(data[i]);
      let videoGameTr = videoGame.renderTR();


      $("#vg_tbody").append(videoGameTr);

      addVideoGameButton(data, i);
    }
  }, "json");
}
