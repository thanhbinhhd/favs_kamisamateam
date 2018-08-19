var timer, length_str = 27, length_item = 4;
$(document).on('keyup', '#products-search', function() {
  clearTimeout(timer);
  timer = setTimeout(function () {
    var search = $('#products-search').val();
    $.ajax({
      url: '/searches?search=' + search,
      context: document.body,
      dataType: 'json'
    }).done(function(data) {
      $('.results').empty();

      var products = data.results["products"];
      if(products.length) {
        $('.results').append('<p><b>農産物</b></p><hr>');
        for (var i = 0; i < products.length; i++) {
          $('.results').append('<a href="/products/' + products[i].id
            +'"><li><span class="products-search-img"><img src="'
            + products[i].image + '"></span><span class="products-search-str">'
            + products[i].name.substring(0, length_str) + '</span></li></a><hr>');
          if(i == length_item) break;
        }
      }

      var users = data.results["users"];
      if(users.length) {
        $('.results').append('<p><b>ユーザー</b></p><hr>');
        for (var i = 0; i < users.length; i++) {
          $('.results').append('<a href="/users/' + users[i].id
            +'"><li><span class="products-search-img"><img src="'
            + users[i].avatar + '"></span><span class="products-search-str">'
            + users[i].name.substring(0, length_str) + '</span></li></a><hr>');
          if(i == length_item) break;
        }
      }

      $('.results').append('<a href="/searches?search=' + search);
    });
  }, 1000);
});

document.addEventListener('turbolinks:load', function() {

  $('.result-products').on('click', function() {
    $(this).addClass("active");
    $('.result-users').removeClass("active");
    $('.result-products-list').show();
    $('.result-users-list').hide();
  });

  $('.result-users').on('click', function() {
    $(this).addClass(" active");
    $('.result-products').removeClass("active");
    $('.result-products-list').hide();
    $('.result-users-list').show();
  });

  $(document).on('submit', '.form-search', function(e) {
    if($('.products-search').val() == '')
      e.preventDefault();
  });
});
