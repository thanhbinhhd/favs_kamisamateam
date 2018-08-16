$(document).on('click', '.comment-edit-btn', function() {
  console.log($(this).attr('id'));
  $('#post-comment-' + $(this).attr('id')).hide();
  $('#post-comment-edit-form-' + $(this).attr('id')).show();
  $('#comment-form-content-' + $(this).attr('id')).focus();
});

$(document).on('click', '.comment-edit-btn-cancel', function() {
  $('#post-comment-' + $(this).attr('id')).show();
  $('#post-comment-edit-form-' + $(this).attr('id')).hide();
});
