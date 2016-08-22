function UID() {
  function s4() {
    return Math.floor((1 + Math.random()) * 0x10000)
      .toString(16)
      .substring(1);
  }
  return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
    s4() + '-' + s4() + s4() + s4();
}
function __TMEditor() {
  this.tpl = "<div class=\"tmeditor\" id=\"{{ID}}\">\n<div class=\"toolbar\">\n<div class=\"set\">\n<icon tool=\"bold\">format_bold<\/icon>\n<icon tool=\"italic\">format_italic<\/icon>\n<\/div>\n<icon tool=\"image\">insert_photo<\/icon>\n<icon tool=\"link\">insert_link<\/icon>\n<icon tool=\"quote\">format_quote<\/icon>\n<div class=\"list\">\n<icon tool=\"code\">code<\/icon>\n<ul id=\"codes_list\">\n<li lang=\"code\">Code<\/li>\n<li lang=\"javascript\">JavaScript<\/li>\n<li lang=\"html\">HTML<\/li>\n<li lang=\"php\">PHP<\/li>\n<li lang=\"ruby\">Ruby<\/li>\n<li lang=\"java\">Java<\/li>\n<li lang=\"perl\">Perl<\/li>\n<li lang=\"python\">Python<\/li>\n<li lang=\"bash\">Bash<\/li>\n<li lang=\"cs\">C#<\/li>\n<li lang=\"cpp\">C++<\/li>\n<li lang=\"css\">CSS<\/li>\n<li lang=\"diff\">Diff<\/li>\n<li lang=\"xml\">XML<\/li>\n<li lang=\"sql\">SQL<\/li>\n<li lang=\"1c\">1C<\/li>\n<li lang=\"actionscript\">ActionScript<\/li>\n<li lang=\"apache\">Apache<\/li>\n<li lang=\"axapta\">Axapta<\/li>\n<li lang=\"cmake\">CMake<\/li>\n<li lang=\"coffeescript\">CoffeeScript<\/li>\n<li lang=\"dos\">DOS<\/li>\n<li lang=\"delphi\">Delphi<\/li>\n<li lang=\"django\">Django<\/li>\n<li lang=\"erlang\">Erlang<\/li>\n<li lang=\"erlang_repl\">Erlang REPL<\/li>\n<li lang=\"go\">Go<\/li>\n<li lang=\"haskell\">Haskell<\/li>\n<li lang=\"lisp\">Lisp<\/li>\n<li lang=\"lua\">Lua<\/li>\n<li lang=\"mel\">MEL<\/li>\n<li lang=\"markdown\">Markdown<\/li>\n<li lang=\"matlab\">Matlab<\/li>\n<li lang=\"nginx\">Nginx<\/li>\n<li lang=\"objectivec\">Objective C<\/li>\n<li lang=\"rust\">Rust<\/li>\n<li lang=\"scala\">Scala<\/li>\n<li lang=\"smalltalk\">Smalltalk<\/li>\n<li lang=\"tex\">TeX<\/li>\n<li lang=\"vbscript\">VBScript<\/li>\n<li lang=\"vhdl\">VHDL<\/li>\n<li lang=\"vala\">Vala<\/li>\n<\/ul>\n<\/div>\n\n<\/div>\n<div class=\"body\">\n<textarea><\/textarea>\n<\/div>\n<\/div>";
  this.editor = false;
  this.id = false;
  this.width = "600px";
  this.height = "350px";
  this.highlight = false;
}
__TMEditor.prototype.init = function (obj) {
  var elem = $(obj.selector),
  value = elem.text(),
  width = obj.width || this.width,
  height = obj.height || this.height;
  this.id = UID();
  var pre = this.tpl.replace(/{{ID}}/ig, this.id);
  elem.replaceWith(pre);
  this.editor = $("#"+this.id);
  this.editor.css("width", width).css("height", height);
  this.textarea = $("#"+this.id).find("textarea");
  this.textarea.text(value);
};
__TMEditor.prototype.codes = function () {
  var codes = TMEditor.editor.find("#codes_list");
  if(codes.is('[opened]'))
  {
    codes.animate({
      height: "0px",
      width: "0px"
    }, 400);
    codes.removeAttr('opened');
  }
  else
  {
    codes.animate({
      height: "250px",
      width: "200px"
    }, 400);
    codes.attr('opened', true);
  }
};
var TMEditor = new __TMEditor;
$("body").on("click", ".tmeditor icon[tool]", function() {
  var tool = $(this).attr("tool"),
  len = TMEditor.textarea.val().length,
  start = TMEditor.textarea[0].selectionStart,
  end = TMEditor.textarea[0].selectionEnd,
  selected = TMEditor.textarea.val().substring(start, end)
  replace = "";
  switch (tool) {
    case 'bold':
      replace = "<b>" + selected + "</b>";
    break;

    case 'italic':
      replace = "<i>" + selected + "</i>";
    break;

    case 'quote':
      replace = "<blockquote>" + selected + "</blockquote>";
    break;

    case 'link':
      var link = window.prompt("Insert Link", "http://");
      if (selected == '') selected = 'Link';
      if (link == null) return false;
      replace = "<a href=\""+link+"\">"+selected+"</a>";
    break;

    case 'image':
      var link = window.prompt("Insert image link", "http://");
      if (link == null) return false;
      replace = "<img src=\""+link+"\" alt=\""+selected+"\"> "+selected;
    break;

    case 'code':
      TMEditor.codes();
      return false;
    break;
  }
  TMEditor.textarea.val(TMEditor.textarea.val().substring(0, start) + replace + TMEditor.textarea.val().substring(end, len));
})

$("body").on("click", ".tmeditor li[lang]", function() {
  var lang = $(this).attr("lang"),
  len = TMEditor.textarea.val().length,
  start = TMEditor.textarea[0].selectionStart,
  end = TMEditor.textarea[0].selectionEnd,
  selected = TMEditor.textarea.val().substring(start, end)
  replace = "";
  if(TMEditor.highlight) replace = "<pre class=\""+highlight+" lang-"+lang+"\">"+selected+"</pre>";
  else replace = "<pre lang=\""+lang+"\">"+selected+"</pre>";
  TMEditor.textarea.val(TMEditor.textarea.val().substring(0, start) + replace + TMEditor.textarea.val().substring(end, len));
  TMEditor.codes();
  return false;
});
$(document).mouseup(function (e) {
  if(TMEditor.editor.find("#codes_list").is('[opened]')) {
    var container = TMEditor.editor.find("#codes_list");
    if (container.has(e.target).length === 0 && container[0].outerHTML != e.target.outerHTML) {
      TMEditor.codes();
    }
  }
});
