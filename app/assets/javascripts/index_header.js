$(document).on('turbolinks:load', function() {
  $(".index-header__left--title").hover(function () {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".my_post").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".log-out").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".new-user-registration").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".log-in").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });
});