// Generated by CoffeeScript 1.7.1
$(function() {
  return $('#upload').click(function() {
    return $.ajax({
      type: 'post',
      url: '/upload',
      success: function(res) {
        return console.log(res);
      },
      error: function() {
        return alert('error');
      }
    });
  });
});
