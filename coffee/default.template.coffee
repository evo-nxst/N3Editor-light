#out: ../$1.js, sourcemap: true
window.tm_default_template = '
  <header>
    <div class="tm-icon">Tm</div>
    <div class="tm-title">{{tm-title}}</div>
  </header>
  <div class="tm-toolbar">
    <div class="tm-group" data-action="tm-dropdown">
      <span>Weight</span>
      <a><span style="font-weight:400" data="regular">Regular</span><icon>keyboard_arrow_down</icon></a>
      <div class="tm-dropdown-container" id="tm-weight">
        <a data-weight="200"><span style="font-weight:200" data="ultra-light">Ultra Light</span></a>
        <a data-weight="400"><span style="font-weight:400" data="regular">Regular</span></a>
        <a data-weight="500"><span style="font-weight:500" data="medium">Medium</span></a>
        <a data-weight="700"><span style="font-weight:700" data="bold">Bold</span></a>
        <a data-weight="900"><span style="font-weight:900" data="black">Black</span></a>
      </div>
    </div>
    <div class="tm-group" data-action="tm-dropdown">
      <span>Code</span>
      <a><span style="font-weight:400" data="javascript">JavaScript</span><icon>keyboard_arrow_down</icon></a>
      <div class="tm-dropdown-container">
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
    <div class="tm-group">
      <div data-action="tm-dropdown" target="tm-size">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M2.5 4v3h5v12h3V7h5V4h-13zm19 5h-9v3h3v7h3v-7h3V9z"/></svg>
        <div class="tm-dropdown-container">
          <a data-size="11">11px</a>
          <a data-size="12">12px</a>
          <a data-size="13">13px</a>
          <a data-size="14">14px</a>
          <a data-size="15">15px</a>
          <a data-size="16">16px</a>
          <a data-size="17">17px</a>
          <a data-size="18">18px</a>
          <a data-size="19">19px</a>
          <a data-size="20">20px</a>
          <a data-size="21">21px</a>
          <a data-size="22">22px</a>
          <a data-size="23">23px</a>
          <a data-size="24">24px</a>
          <a data-size="25">25px</a>
          <a data-size="26">26px</a>
          <a data-size="27">27px</a>
          <a data-size="28">28px</a>
          <a data-size="29">29px</a>
          <a data-size="30">30px</a>
          <a data-size="31">31px</a>
          <a data-size="32">32px</a>
          <a data-size="33">33px</a>
          <a data-size="34">34px</a>
          <a data-size="35">35px</a>
          <a data-size="36">36px</a>
          <a data-size="37">37px</a>
          <a data-size="38">38px</a>
          <a data-size="39">39px</a>
          <a data-size="40">40px</a>
          <a data-size="41">41px</a>
          <a data-size="42">42px</a>
          <a data-size="43">43px</a>
          <a data-size="44">44px</a>
          <a data-size="45">45px</a>
          <a data-size="46">46px</a>
          <a data-size="47">47px</a>
          <a data-size="48">48px</a>
          <a data-size="49">49px</a>
          <a data-size="50">50px</a>
          <a data-size="51">51px</a>
          <a data-size="52">52px</a>
          <a data-size="53">53px</a>
          <a data-size="54">54px</a>
          <a data-size="55">55px</a>
          <a data-size="56">56px</a>
          <a data-size="57">57px</a>
          <a data-size="58">58px</a>
          <a data-size="59">59px</a>
          <a data-size="60">60px</a>
          <a data-size="61">61px</a>
          <a data-size="62">62px</a>
          <a data-size="63">63px</a>
          <a data-size="64">64px</a>
          <a data-size="65">65px</a>
          <a data-size="66">66px</a>
          <a data-size="67">67px</a>
          <a data-size="68">68px</a>
          <a data-size="69">69px</a>
          <a data-size="70">70px</a>
          <a data-size="71">71px</a>
          <a data-size="72">72px</a>
        </div>
      </div>
      <div data-action="tm-dropdown">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill-opacity=".36" d="M0 20h24v4H0z"/><path d="M11 3L5.5 17h2.25l1.12-3h6.25l1.12 3h2.25L13 3h-2zm-1.38 9L12 5.67 14.38 12H9.62z"/></svg>
        <div class="tm-dropdown-container">
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
      <div data-insert="blockquote">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M6 17h3l2-4V7H5v6h3zm8 0h3l2-4V7h-6v6h3z"/></svg>
      </div>
      <div data-align="left">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M15 15H3v2h12v-2zm0-8H3v2h12V7zM3 13h18v-2H3v2zm0 8h18v-2H3v2zM3 3v2h18V3H3z"/></svg>
      </div>
      <div data-align="center">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M7 15v2h10v-2H7zm-4 6h18v-2H3v2zm0-8h18v-2H3v2zm4-6v2h10V7H7zM3 3v2h18V3H3z"/></svg>
      </div>
      <div data-align="right">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M3 21h18v-2H3v2zm6-4h12v-2H9v2zm-6-4h18v-2H3v2zm6-4h12V7H9v2zM3 3v2h18V3H3z"/></svg>
      </div>
      <div data-insert="image">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.5 13.5l2.5 3.01L14.5 12l4.5 6H5l3.5-4.5z"/></svg>
      </div>
      <div data-insert="link">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M3.9 12c0-1.71 1.39-3.1 3.1-3.1h4V7H7c-2.76 0-5 2.24-5 5s2.24 5 5 5h4v-1.9H7c-1.71 0-3.1-1.39-3.1-3.1zM8 13h8v-2H8v2zm9-6h-4v1.9h4c1.71 0 3.1 1.39 3.1 3.1s-1.39 3.1-3.1 3.1h-4V17h4c2.76 0 5-2.24 5-5s-2.24-5-5-5z"/></svg>
      </div>
    </div>
  </div>'
