#out: ../assets/$1.js, sourcemap: true
N3ELight.init {
  selector: ".n3editor-area"
  skin: n3_default_template
  plugins: 'weight code font-size color quote align-left align-center align-right image link'
}
$('a[href*=\\#]').click (e) ->
  e.preventDefault()
  dest = $(this).attr('href')
  $('html,body').animate { scrollTop: $(dest).offset().top }, 'slow'
  return
