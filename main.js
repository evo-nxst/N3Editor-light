(function() {
  TMELight.init({
    selector: ".tmeditor-area",
    skin: tm_default_template
  });

  $('a[href*=\\#]').click(function(e) {
    var dest;
    e.preventDefault();
    dest = $(this).attr('href');
    $('html,body').animate({
      scrollTop: $(dest).offset().top
    }, 'slow');
  });

}).call(this);

//# sourceMappingURL=main.js.map