(function() {
  if (typeof N3ELight === 'undefined') {
    console.error('N3Editor not instelled. Please visit https://gh.n3sty.com/n3editor-light for more info');
    return;
  }

  n3toolbar.push('<div class="n3-tool"> <div data-action="n3-dropdown" target="n3-size"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M2.5 4v3h5v12h3V7h5V4h-13zm19 5h-9v3h3v7h3v-7h3V9z"/></svg> <div class="n3-dropdown-container"> <a data-size="11">11px</a> <a data-size="12">12px</a> <a data-size="13">13px</a> <a data-size="14">14px</a> <a data-size="15">15px</a> <a data-size="16">16px</a> <a data-size="17">17px</a> <a data-size="18">18px</a> <a data-size="19">19px</a> <a data-size="20">20px</a> <a data-size="21">21px</a> <a data-size="22">22px</a> <a data-size="23">23px</a> <a data-size="24">24px</a> <a data-size="25">25px</a> <a data-size="26">26px</a> <a data-size="27">27px</a> <a data-size="28">28px</a> <a data-size="29">29px</a> <a data-size="30">30px</a> <a data-size="31">31px</a> <a data-size="32">32px</a> <a data-size="33">33px</a> <a data-size="34">34px</a> <a data-size="35">35px</a> <a data-size="36">36px</a> <a data-size="37">37px</a> <a data-size="38">38px</a> <a data-size="39">39px</a> <a data-size="40">40px</a> <a data-size="41">41px</a> <a data-size="42">42px</a> <a data-size="43">43px</a> <a data-size="44">44px</a> <a data-size="45">45px</a> <a data-size="46">46px</a> <a data-size="47">47px</a> <a data-size="48">48px</a> <a data-size="49">49px</a> <a data-size="50">50px</a> <a data-size="51">51px</a> <a data-size="52">52px</a> <a data-size="53">53px</a> <a data-size="54">54px</a> <a data-size="55">55px</a> <a data-size="56">56px</a> <a data-size="57">57px</a> <a data-size="58">58px</a> <a data-size="59">59px</a> <a data-size="60">60px</a> <a data-size="61">61px</a> <a data-size="62">62px</a> <a data-size="63">63px</a> <a data-size="64">64px</a> <a data-size="65">65px</a> <a data-size="66">66px</a> <a data-size="67">67px</a> <a data-size="68">68px</a> <a data-size="69">69px</a> <a data-size="70">70px</a> <a data-size="71">71px</a> <a data-size="72">72px</a> </div> </div> </div>');

  $('body').on('click', '[data-size]', function() {
    var end, len, replace, selected, start, value;
    value = $(this).attr("data-size");
    len = textarea.val().length;
    start = textarea[0].selectionStart;
    end = textarea[0].selectionEnd;
    selected = textarea.val().substring(start, end);
    replace = '<span style="font-size:' + value + '">' + selected + '</span>';
    textarea.val(textarea.val().substring(0, start) + replace + textarea.val().substring(end, len));
  });

}).call(this);

//# sourceMappingURL=font-size.js.map