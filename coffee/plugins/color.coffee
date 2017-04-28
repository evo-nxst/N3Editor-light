#out: ../../plugins/$1.js, sourcemap: true
# Toolbar plugin for set text color
if typeof N3ELight == 'undefined'
  console.error  'N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info'
  return

n3toolbar.push '
    <div class="n3-tool">
      <div data-action="n3-dropdown">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill-opacity=".36" d="M0 20h24v4H0z"/><path d="M11 3L5.5 17h2.25l1.12-3h6.25l1.12 3h2.25L13 3h-2zm-1.38 9L12 5.67 14.38 12H9.62z"/></svg>
        <div class="n3-dropdown-container">
          <div class="colors">
            <a data-color="#f44336" style="background:#f44336"></a>
            <a data-color="#e91e63" style="background:#e91e63"></a>
            <a data-color="#9c27b0" style="background:#9c27b0"></a>
            <a data-color="#673ab7" style="background:#673ab7"></a>
            <a data-color="#3f51b5" style="background:#3f51b5"></a>
            <a data-color="#2196f3" style="background:#2196f3"></a>
            <a data-color="#03a9f4" style="background:#03a9f4"></a>
            <a data-color="#00bcd4" style="background:#00bcd4"></a>
            <a data-color="#009688" style="background:#009688"></a>
            <a data-color="#4caf50" style="background:#4caf50"></a>
            <a data-color="#8bc34a" style="background:#8bc34a"></a>
            <a data-color="#cddc39" style="background:#cddc39"></a>
            <a data-color="#ffc107" style="background:#ffc107"></a>
            <a data-color="#ff9800" style="background:#ff9800"></a>
            <a data-color="#ff5722" style="background:#ff5722"></a>
            <a data-color="#795548" style="background:#795548"></a>
            <a data-color="#9e9e9e" style="background:#9e9e9e"></a>
            <a data-color="#607d8b" style="background:#607d8b"></a>
          </div>
        </div>
      </div>
    </div>'

$('body').on 'click', '[data-color]', ->
    value = $(@).attr("data-color")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<span style="color:'+value+'">'+selected+'</span>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return
