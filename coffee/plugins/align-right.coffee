#out: ../../plugins/$1.js, sourcemap: true
# Toolbar plugin for text align
if typeof N3ELight == 'undefined'
  console.error  'N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info'
  return

n3toolbar.push '
    <div class="n3-tool">
      <div data-align="right">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M3 21h18v-2H3v2zm6-4h12v-2H9v2zm-6-4h18v-2H3v2zm6-4h12V7H9v2zM3 3v2h18V3H3z"/></svg>
      </div>
    </div>'
