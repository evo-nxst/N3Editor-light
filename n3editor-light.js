(function() {
  var N3ELight;

  window.n3toolbar = Array();

  window.insert = Array();

  window.include = function(src) {
    $.ajax({
      async: false,
      url: src,
      dataType: "script"
    });
  };

  window.N3DropClose = function(e) {
    var cnt, i, results, t;
    cnt = $('body').find('.n3-dropdown-container');
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

  N3ELight = function() {};

  N3ELight.prototype.uniqueID = function() {
    var s4;
    s4 = function() {
      return Math.floor((1 + Math.random()) * 0x10000).toString(16).substring(1);
    };
    return s4() + s4() + '-' + s4() + '-' + s4() + '-' + s4() + '-' + s4() + s4() + s4();
  };

  N3ELight.prototype.Template = '<header> <div class="n3-icon">N3</div> <div class="n3-title">{{n3-title}}</div> </header> <div class="n3-toolbar"></div>';

  N3ELight.prototype.init = function(params) {
    var build, version;
    this.version = version = "3.0.1 L";
    this.build = build = "2";
    this.params = params;
    this.textarea = $(params.selector);
    this.title = params.title || "N3Editor " + version;
    this.loadPlugins(params);
    this.setUI("");
    window.textarea = $(params.selector);
    $(window).mouseup(function(e) {
      N3DropClose(e);
    });
    $(textarea).mouseup(function(e) {
      N3DropClose(e);
    });
    this.iniToolbar();
    $('body').on('click', '[data-insert]', function() {
      var end, len, replace, selected, start, value;
      value = $(this).attr("data-insert");
      len = textarea.val().length;
      start = textarea[0].selectionStart;
      end = textarea[0].selectionEnd;
      selected = textarea.val().substring(start, end);
      replace = insert[value](selected);
      textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
    });
    $('body').on('click', '[data-align]', function() {
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

  N3ELight.prototype.setUI = function() {
    var container, skin, textarea;
    skin = this.params.skin || this.Template;
    skin = skin.replace(/{{n3-title}}/g, this.title);
    try {
      textarea = this.textarea[0].outerHTML;
      console.info('[N3Editor]: Script running with success. Excellent!');
    } catch (error) {
      console.error('[N3Editor]: Textarea with selector "' + this.params.selector + '" not found. Script stopped. Bad...');
      return;
    }
    container = '<div class="n3editor" id="' + this.uniqueID() + '">' + skin + '<div class="n3-editor">' + textarea + '</div> </div>';
    this.textarea.replaceWith(container);
    return $('body').on('click', '[data-action="n3-dropdown"]', function() {
      return $(this).addClass('open');
    });
  };

  N3ELight.prototype.loadPlugins = function(params) {
    var p, path, plugins, tb, url;
    path = $('body').find('script');
    p = false;
    $('script').each(function(index, value) {
      var src;
      src = value.src;
      if (src.match(/n3editor-light/i)) {
        src = src.replace('n3editor-light.js', '');
        return p = src;
      }
    });
    url = window.location.href.split('/');
    url = url[0] + "//" + url[2];
    this.path = p = p.replace(url, '');
    plugins = url + p + "plugins/";
    if (params.plugins === void 0 || params.plugins === '') {
      params.plugins = 'weight code font-size color quote align-left align-center align-right image link';
    }
    tb = params.plugins;
    tb = tb.split(' ');
    return tb.forEach(function(name, i, arr) {
      include(plugins + name + '.js');
    });
  };

  N3ELight.prototype.iniToolbar = function() {
    n3toolbar.forEach(function(val, i) {
      $('.n3-toolbar').append(val);
    });
  };

  window.N3ELight = new N3ELight;

}).call(this);

//# sourceMappingURL=n3editor-light.js.map