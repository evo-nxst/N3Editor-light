# TMEditor
The aweasome simple jquery based editor<br>
#####Init<br>
To activate the "nEditor" use script "<b>script</b>"
  
    <textarea id="neditor"></textarea>
    <script type="text/javascript">
      var editor = new nEditor($("#neditor")); // Textarea unique ID
      editor.init();
    </script>

#####CUSTOMIZATION
You can personalize the editor using script parameters. Personalization should be <b>defined before activating editor.</b>
    
    <textarea id="neditor"></textarea>
    <script type="text/javascript">
      var editor = new nEditor($("#neditor")); // Textarea unique ID
      editor.width = "100%";
      editor.height = "200px";
      editor.classes = "my_css_class my_css_class_2 ecc...";
      editor.init();
    </script>
Also, if the initialization script at the "textarea" will be any value, it will be transferred to the editor.
You can also use the standard textarea attributes such as: placeholder, id(for editor container), data-id(for textarea)
    
    <textarea id="neditor" placeholder="Custom placeholder">The value of the field "textarea".</textarea>
    <script type="text/javascript">
      var editor = new nEditor($("#neditor")); // Textarea unique ID
      editor.init();
    </script>


The editor distributed under [(MIT)][] license
[(MIT)]: http://www.n3sty.com/mit.html
