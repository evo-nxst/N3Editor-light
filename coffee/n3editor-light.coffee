#out: ../$1.js, sourcemap: true
window.n3toolbar = Array()
window.insert = Array()
window.include = (src) ->
  $.ajax
    async: false
    url: src
    dataType: "script"
  return

window.N3DropClose = (e) ->
  cnt = $('body').find '.n3-dropdown-container'
  i = 0
  while i < cnt.length
    t = $(cnt[i]).parent("div")
    if t.hasClass "open"
      if t.find($(e.target)).length != 1
        t.removeClass "open"
    i++

N3ELight = () ->
N3ELight::uniqueID = ->
  s4 = ->
    Math.floor((1+Math.random()) * 0x10000).toString(16).substring 1

  s4()+s4()+'-'+s4()+'-'+s4()+'-'+s4()+'-'+s4()+s4()+s4()

N3ELight::Template = '
  <header>
    <div class="n3-icon">N3</div>
    <div class="n3-title">{{n3-title}}</div>
  </header>
  <div class="n3-toolbar"></div>'

N3ELight::init = (params) ->
  @version = version = "3.0 L"
  @build = build = "5"
  @params = params
  @textarea = $(params.selector)
  @title = params.title || "N3Editor "+version
  @loadPlugins(params)

  @setUI ""
  window.textarea = $(params.selector)

  $(window).mouseup (e) ->
    N3DropClose e
    return
  $(textarea).mouseup (e) ->
    N3DropClose e
    return

  @iniToolbar()

  $('body').on 'click', '[data-insert]', ->
    value = $(@).attr("data-insert")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = insert[value](selected)
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return

  $('body').on 'click', '[data-align]', ->
    value = $(@).attr("data-align")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<div style="text-align:'+value+'">'+selected+'</div>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return
  return

N3ELight::setUI = ->
  skin = @params.skin || @Template
  skin = skin.replace(/{{n3-title}}/g, @title)
  try
    textarea = @textarea[0].outerHTML
    console.info '[N3Editor]: Script running with success. Excellent!'
  catch
    console.error '[N3Editor]: Textarea with selector "'+@params.selector+ '" not found. Script stopped. Bad...'
    return
  container = '
  <div class="n3editor" id="'+@uniqueID()+'">
    '+skin+'
    <div class="n3-editor">
      '+textarea+'
    </div>
  </div>'
  @textarea.replaceWith container

  $('body').on 'click', '[data-action="n3-dropdown"]', ->
    $(@).addClass 'open'

N3ELight::loadPlugins = (params) ->
  path = $('body').find 'script'
  p = false
  $.each path, (index, value) ->
    src = $(value).attr 'src'
    if src.match(/n3editor-light/i)
      src = src.replace 'n3editor-light.js', ''
      p = src

  l = location.href
  m = l.match /[^/]+\.html/i
  if m == null
    m = Array()
    m[0] = ''
  url = l.replace m[0], ''

  @path = p
  plugins = url+p+"/plugins/"

  if params.plugins == undefined || params.plugins == ''
    params.plugins = 'weight code font-size color quote align-left align-center align-right image link'

  if params.plugins != undefined && params.plugins != ''
    tb = params.plugins
    tb = tb.split ' '
    tb.forEach (name, i, arr) ->
      include plugins+name+'.js'
      return


N3ELight::iniToolbar = ->
  n3toolbar.forEach (val, i) ->
    $('.n3-toolbar').append val
    return
  return


window.N3ELight = new N3ELight
