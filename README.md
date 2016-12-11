# TMEditor 2.0 <b>L</b>
The aweasome simple jquery based editor
Editor wysiwyg version is [here](https://github.com/N3stY/TMEditor)

####GET STARTED

#####Initialize

    <!-- Load skin css -->
    <link href="/path/to/tmeditor-light.min.css" rel="stylesheet" type="text/css">

    <!-- Load main script -->
    <script type="text/javascript" src="/path/to/tmeditor-light.js"></script>
    <!-- Load skin script -->
    <script type="text/javascript" src="/path/to/default.template.js"></script>

    <script type="text/javascript">
      TMELight.init({
        selector: ".tmeditor-area", // Set selector
        skin: tm_default_template, // Load skin if not default
        title: "Custom title" // Customize title in header
      });
    </script>
    
#####Initialize CoffeeScript
 
    TMELight.init {
      selector: ".tmeditor-area" # Set selector
      skin: tm_default_template # Load skin if not default
      title: "Custom title" # Customize title in header
    }
<br>
<b>You can create your own style</b> using as sample <b>[tmeditor-light.less](https://github.com/N3stY/TMEditor-light/blob/master/less/tmeditor-light.less)</b> and <b>[default.template.coffee](https://github.com/N3stY/TMEditor-light/blob/master/coffee/default.template.coffee)</b> / <b>[default.template.js](https://github.com/N3stY/TMEditor-light/blob/master/default.template.js)</b>
<br>
Want to help with the development? Contact me <b>yura&#64;n3sty.com</b>

Try a [DEMO](https://n3sty.github.io/tmeditor-light/)<br>
The editor distributed under [MIT](http://www.n3sty.com/mit.html) license
