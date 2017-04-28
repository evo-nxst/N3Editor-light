#out: ../../plugins/$1.js, sourcemap: true
# Toolbar plugin for code highlighting
if typeof N3ELight == 'undefined'
  console.error  'N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info'
  return

n3toolbar.push '
    <div class="n3-tool" data-action="n3-dropdown">
      <span>Code</span>
      <a><span style="font-weight:400" data="javascript">JavaScript</span><icon>keyboard_arrow_down</icon></a>
      <div class="n3-dropdown-container">
        <a data-lang="code">Code</a>
        <a data-lang="javascript">JavaScript</a>
        <a data-lang="html">HTML</a>
        <a data-lang="php">PHP</a>
        <a data-lang="ruby">Ruby</a>
        <a data-lang="java">Java</a>
        <a data-lang="perl">Perl</a>
        <a data-lang="python">Python</a>
        <a data-lang="bash">Bash</a>
        <a data-lang="cs">C#</a>
        <a data-lang="cpp">C++</a>
        <a data-lang="css">CSS</a>
        <a data-lang="diff">Diff</a>
        <a data-lang="xml">XML</a>
        <a data-lang="sql">SQL</a>
        <a data-lang="1c">1C</a>
        <a data-lang="actionscript">ActionScript</a>
        <a data-lang="apache">Apache</a>
        <a data-lang="axapta">Axapta</a>
        <a data-lang="cmake">CMake</a>
        <a data-lang="coffeescript">CoffeeScript</a>
        <a data-lang="dos">DOS</a>
        <a data-lang="delphi">Delphi</a>
        <a data-lang="django">Django</a>
        <a data-lang="erlang">Erlang</a>
        <a data-lang="erlang_repl">Erlang REPL</a>
        <a data-lang="go">Go</a>
        <a data-lang="haskell">Haskell</a>
        <a data-lang="lisp">Lisp</a>
        <a data-lang="lua">Lua</a>
        <a data-lang="mel">MEL</a>
        <a data-lang="markdown">Markdown</a>
        <a data-lang="matlab">Matlab</a>
        <a data-lang="nginx">Nginx</a>
        <a data-lang="objectivec">Objective C</a>
        <a data-lang="rust">Rust</a>
        <a data-lang="scala">Scala</a>
        <a data-lang="smalltalk">Smalltalk</a>
        <a data-lang="tex">TeX</a>
        <a data-lang="vbscript">VBScript</a>
        <a data-lang="vhdl">VHDL</a>
        <a data-lang="vala">Vala</a>
      </div>
    </div>
    <div class="n3-separator"></div>'

$('body').on 'click', '[data-lang]', ->
    value = $(@).attr("data-lang")
    len = textarea.val().length
    start = textarea[0].selectionStart
    end = textarea[0].selectionEnd
    selected = textarea.val().substring(start, end)
    replace = '<pre><code class="'+value+'">'+selected+'</code></pre>'
    textarea.val(textarea.val().substring(0, start)+replace+textarea.val().substring(end, len));
    return
