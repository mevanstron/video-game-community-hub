$(document).ready(function() {
  addTag();
})

function addTag() {
  $('#new_tag').submit(function(event) {
    event.preventDefault();

    let values = $(this).serialize();
    let posting = $.post('/tags', values);

    posting.done(function(data) {
      if (data["id"]) {
        let source = $("#new_tag_template").html();
        let template = Handlebars.compile(source);

        let context = {"tagId": data["id"], "tagName": data["name"] };
        let html = template(context);

        $("#tag_tbody").append(html)
        deleteTag();
      }
    });
    $("#tag_text_box")[0]["value"] = "";
  });
}

function deleteTag() {
  //listens for click event to delete tag

  $(`.delete_tag`).unbind('submit').bind('submit', function(event) {
    event.preventDefault();
    let values = $(this).serialize();
    let posting = $.post(`/tags/${this["tag_id"]["value"]}`, values);

    $(`#tr_${this["tag_id"]["value"]}`).empty()
  });
}
