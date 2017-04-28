(function() {
  if (typeof N3ELight === 'undefined') {
    console.error('N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info');
    return;
  }

  n3toolbar.push('<div class="n3-tool"> <div data-insert="image"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.5 13.5l2.5 3.01L14.5 12l4.5 6H5l3.5-4.5z"/></svg> </div> </div>');

  insert.image = function(selected) {
    var link, replace;
    replace = selected;
    link = window.prompt('Insert image link', 'http://');
    if (link) {
      replace = '<img src="' + link + '">' + selected;
    }
    return replace;
  };

}).call(this);

//# sourceMappingURL=image.js.map