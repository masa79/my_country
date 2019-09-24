$(document).on('turbolinks:load', function() {
  $(".locals__comment__write__box--btn").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".locals__edit__link--btn").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  });

  $(".locals__edit__delete--btn").hover(function() {
    $(this).css('color', '#00BFFF');
  },
  function() {
    $(this).css('color', '');
  })
});