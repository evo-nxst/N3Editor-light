(function() {
  if (typeof N3ELight === 'undefined') {
    console.error('N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info');
    return;
  }

  n3toolbar.push('<div class="n3-tool" data-action="n3-dropdown"> <span>Weight</span> <a><span style="font-weight:400" data="regular">Regular</span><icon>keyboard_arrow_down</icon></a> <div class="n3-dropdown-container" id="n3-weight"> <a data-weight="200"><span style="font-weight:200" data="ultra-light">Ultra Light</span></a> <a data-weight="400"><span style="font-weight:400" data="regular">Regular</span></a> <a data-weight="500"><span style="font-weight:500" data="medium">Medium</span></a> <a data-weight="700"><span style="font-weight:700" data="bold">Bold</span></a> <a data-weight="900"><span style="font-weight:900" data="black">Black</span></a> </div> </div> <div class="n3-separator"></div>');

  $('body').on('click', '[data-weight]', function() {
    var end, len, replace, selected, start, value;
    value = $(this).attr("data-weight");
    len = textarea.val().length;
    start = textarea[0].selectionStart;
    end = textarea[0].selectionEnd;
    selected = textarea.val().substring(start, end);
    replace = '<span style="font-weight:' + value + '">' + selected + '</span>';
    textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
  });

}).call(this);

//# sourceMappingURL=weight.js.map