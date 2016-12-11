(function() {
  var TMDropClose, TMELight;

  TMELight = function() {};

  TMELight.prototype.uniqueID = function() {
    var s4;
    s4 = function() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    };
    return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
  };

  TMELight.prototype.init = function(params) {
    var textarea, version;
    this.version = version = "2.0 L";
    this.params = params;
    this.textarea = $(params.selector);
    this.title = params.title || "TMEditor " + version;
    this.setUI("");
    textarea = $(params.selector);
    $(window).mouseup(function(e) {
      TMDropClose(e);
    });
    $(textarea).mouseup(function(e) {
      TMDropClose(e);
    });
    $("[data-weight]").click(function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-weight");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = '<span style="font-weight:' + value + '">' + selected + '</span>';
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $("[data-size]").click(function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-size");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = '<span style="font-size:' + value + '">' + selected + '</span>';
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $("[data-lang]").click(function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-lang");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = '<pre><code class="' + value + '">' + selected + '</code></pre>';
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $("[data-color]").click(function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-color");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = '<span style="color:' + value + '">' + selected + '</span>';
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $("[data-insert]").click(function() {
      var end, len, link, replace, selected, start, value;
      value = $(this).attr("data-insert");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      if (value === "blockquote") {
        replace = '<blockquote>' + selected + '</blockquote>';
      }
      if (value === "image") {
        link = window.prompt('Insert image link', 'http://');
        if (link) {
          replace = '<img src="' + link + '">' + selected;
        }
      }
      if (value === "link") {
        link = window.prompt('Insert Link', 'http://');
        if (link) {
          replace = '<a href="' + link + '">' + selected + '</a>';
        }
      }
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $("[data-align]").click(function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-align");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = '<div style="text-align:' + value + '">' + selected + '</div>';
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
  };

  TMELight.prototype.setUI = function() {
    var buttons, container, i, results, skin, textarea;
    skin = this.params.skin || tm_default_template;
    skin = skin.replace(/{{tm-title}}/g, this.title);
    textarea = this.textarea[0].outerHTML;
    container = '<div class="tmeditor" style="width: 900px;" id="' + this.uniqueID() + '">' + skin + '<div class="tm-editor">' + textarea + '</div> </div>';
    this.textarea.replaceWith(container);
    buttons = $('[data-action="tm-dropdown"]');
    i = 0;
    results = [];
    while (i < buttons.length) {
      buttons[i].addEventListener('click', (function() {
        $(this).toggleClass("open");
      }), false);
      results.push(i++);
    }
    return results;
  };

  TMDropClose = function(e) {
    var cnt, i, results, t;
    cnt = $('.tm-dropdown-container');
    i = 0;
    results = [];
    while (i < cnt.length) {
      t = $(cnt[i]).parent("div");
      if (t.hasClass("open")) {
        if (t.find($(e.target)).length !== 1) {
          t.removeClass("open");
        }
      }
      results.push(i++);
    }
    return results;
  };

  window.TMELight = new TMELight;

}).call(this);

//# sourceMappingURL=tmeditor-light.js.map
