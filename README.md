# N3Editor 3.0 <b>L</b>
The aweasome simple jquery based editor

#### GET STARTED

##### Initialize

    <!-- Load skin css -->
    <link href="/path/to/n3editor-light.min.css" rel="stylesheet" type="text/css">

    <!-- Load main script -->
    <script type="text/javascript" src="/path/to/n3editor-light.js"></script>
    <!-- Load skin script -->
    <script type="text/javascript" src="/path/to/default.template.js"></script>

    <script type="text/javascript">
      N3ELight.init({
        selector: ".n3editor-area", // Set selector
        skin: n3_default_template, // Load skin if not default
        title: "Custom title", // Customize title in header
        plugins: 'weight code font-size color quote align-left align-center align-right image link' // Load plugins (separated with space)
    });
    </script>
    
##### Initialize CoffeeScript
 
    N3ELight.init {
        selector: ".n3editor-area" # Set selector
        skin: n3_default_template # Load skin if not default
        title: "Custom title" # Customize title in header
        plugins: 'weight code font-size color quote align-left align-center align-right image link' # Load plugins (separated with space)
    }
<br>
<b>You can create your own style</b> using as sample <b>[tmeditor-light.less](https://github.com/N3stY/TMEditor-light/blob/master/less/tmeditor-light.less)</b> and <b>[default.template.coffee](https://github.com/N3stY/TMEditor-light/blob/master/coffee/default.template.coffee)</b> / <b>[default.template.js](https://github.com/N3stY/TMEditor-light/blob/master/default.template.js)</b>
<br>
Want to help with the development? Contact me <b>yura&#64;n3sty.com</b>

Try a [DEMO](https://gh.n3sty.com/n3editor-light/)<br>
The editor distributed under <b>MIT</b> license
