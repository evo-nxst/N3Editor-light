#out: ../$1.js, sourcemap: true
TMELight = () ->
TMELight::uniqueID = ->
  s4 = ->
    Math.floor((1+Math.random()) * 0x10000).toString(16).substring 1

  s4()+s4()+'-'+s4()+'-'+s4()+'-'+s4()+'-'+s4()+s4()+s4()

TMELight::init = (params) ->
  @version = version = "2.0 L"
  @params = params
  @textarea = $(params.selector)
  @title = params.title || "TMEditor "+version
  @setUI ""
  textarea = $(params.selector)

  $(window).mouseup (e) ->
    TMDropClose e
    return
  $(textarea).mouseup (e) ->
    TMDropClose e
    return

  $("[data-weight]").click ->
    value = $(@).attr("data-weight")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<span style="font-weight:'+value+'">'+selected+'</span>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $("[data-size]").click ->
    value = $(@).attr("data-size")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<span style="font-size:'+value+'">'+selected+'</span>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $("[data-lang]").click ->
    value = $(@).attr("data-lang")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<pre><code class="'+value+'">'+selected+'</code></pre>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $("[data-color]").click ->
    value = $(@).attr("data-color")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<span style="color:'+value+'">'+selected+'</span>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $("[data-insert]").click ->
    value = $(@).attr("data-insert")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    if value == "blockquote"
      replace = '<blockquote>'+selected+'</blockquote>'
    if value == "image"
      link = window.prompt('Insert image link', 'http://')
      if link
        replace = '<img src="'+link+'">'+selected
    if value == "link"
      link = window.prompt('Insert Link', 'http://')
      if link
        replace = '<a href="'+link+'">'+selected+'</a>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $("[data-align]").click ->
    value = $(@).attr("data-align")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<div style="text-align:'+value+'">'+selected+'</div>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return
  return

TMELight::setUI = ->
  skin = @params.skin || tm_default_template
  skin = skin.replace(/{{tm-title}}/g, @title)
  textarea = @textarea[0].outerHTML
  container = '<div class="tmeditor" style="width: 900px;" id="'+@uniqueID()+'">
  '+skin+'
  <div class="tm-editor">
    '+textarea+'
  </div>
  </div>'
  @textarea.replaceWith container

  buttons = $('[data-action="tm-dropdown"]')
  i = 0
  while i < buttons.length
    buttons[i].addEventListener 'click', (->
      $(this).toggleClass "open"
      return
    ), false
    i++

TMDropClose = (e) ->
  cnt = $('.tm-dropdown-container')
  i = 0
  while i < cnt.length
    t = $(cnt[i]).parent("div")
    if t.hasClass "open"
      if t.find($(e.target)).length != 1
        t.removeClass "open"
    i++

window.TMELight = new TMELight
