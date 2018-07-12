document.addEventListener("turbolinks:load", function() {
  addTag();
})

function addTag() {
  $('#new_tag').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();

    var posting = $.post('/tags', values);

    posting.done(function(data) {
      console.log(data["name"])
      $("#tag_tbody").append(
        `<tr>
          <td>
            <a href="/tags/${data["id"]}">${data["name"]}</a>
          </td>
          <td></td>
        </tr>`
      );
    });
  });
}
