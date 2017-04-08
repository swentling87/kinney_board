var ready;

ready = function() {
  $(".add_comment").click(function(e) {
  $(".comment_form").show();
    e.preventDefault();});
};

$(document).on('turbolinks:load', ready);
