$(function(){
  function buildHTML(comment){
    let html = `
                <div class="comment-box">
                  <div class="comment-box__user-name">
                    <a>${comment.user_name}</a>
                  </div>
                  <a>: </a>
                  <div class="comment-box__comment">
                    <a>${comment.text}</a>
                  </div>
                </div>
                <div class="comment-created_at">
                  <a>${comment.created_at}</a>
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.comments').append(html);
      $('.textbox').val('');
      $('.comment-form__submit').prop('disabled', false);
    })
    .fail(function(){
      console.log('error')
    })
  })
})