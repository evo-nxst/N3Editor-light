#out: ../../plugins/$1.js, sourcemap: true
# Toolbar plugin for insert link
if typeof N3ELight == 'undefined'
  console.error  'N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info'
  return

n3toolbar.push '
    <div class="n3-tool">
      <div data-insert="link">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M3.9 12c0-1.71 1.39-3.1 3.1-3.1h4V7H7c-2.76 0-5 2.24-5 5s2.24 5 5 5h4v-1.9H7c-1.71 0-3.1-1.39-3.1-3.1zM8 13h8v-2H8v2zm9-6h-4v1.9h4c1.71 0 3.1 1.39 3.1 3.1s-1.39 3.1-3.1 3.1h-4V17h4c2.76 0 5-2.24 5-5s-2.24-5-5-5z"/></svg>
      </div>
    </div>'

insert.link = (selected) ->
    replace = selected
    link = window.prompt('Insert Link', 'http://')
    if link
      replace = '<a href="'+link+'">'+selected+'</a>'
    return replace
