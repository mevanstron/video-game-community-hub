$(document).ready(function() {
  addVideoGame();
});

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
