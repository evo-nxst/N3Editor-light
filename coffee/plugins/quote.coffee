#out: ../../plugins/$1.js, sourcemap: true
# Toolbar plugin for insert blockquote
if typeof N3ELight == 'undefined'
  console.error  'N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info'
  return

n3toolbar.push '
    <div class="n3-tool">
      <div data-insert="blockquote">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M6 17h3l2-4V7H5v6h3zm8 0h3l2-4V7h-6v6h3z"/></svg>
      </div>
    </div>'

insert.blockquote = (selected) ->
    return "<blockquote>#{selected}</blockquote>"
