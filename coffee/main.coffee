#out: ../$1.js, sourcemap: true
TMELight.init {
  selector:".tmeditor-area"
  skin:tm_default_template
}
$('a[href*=\\#]').click (e) ->
  e.preventDefault()
  dest = $(this).attr('href')
  $('html,body').animate { scrollTop: $(dest).offset().top }, 'slow'
  return
