// document.addEventListener("turbolinks:load", function() {
//   addTag();
// })

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
        $("#tag_tbody").append(
          `<tr>
            <td>
              <a href="/tags/${data["id"]}">${data["name"]}</a>
            </td>
            <td>
            </td>
          </tr>`
        );
      }
    });
    $("#tag_text_box")[0]["value"] = ""
  });
}
