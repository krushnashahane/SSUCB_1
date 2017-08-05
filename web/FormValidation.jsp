<html>
    <head>
        
        <script>
            $(document).ready(function () {

    $('#myform').validate({ // initialize the plugin
        rules: {
            field1: {
                required: true,
                email: true
            },
            field2: {
                required: true,
                minlength: 5
            }
        },
        submitHandler: function (form) { // for demo
            alert('valid form submitted'); // for demo
            return false; // for demo
        }
    });

});
        </script>
        
    </head>
    <body>
        
        
        <form id="myform">
    <input type="text" name="field1" />
    <br/>
    <input type="text" name="field2" />
    <br/>
    <input type="submit" />
</form>
    </body>
</html>