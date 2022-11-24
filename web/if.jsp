<%-- 
    Document   : if
    Created on : Mar 8, 2018, 12:22:47 PM
    Author     : Anbu.S
--%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
    $(".btn1").click(function(){
        $("p").hide();
    });
    $(".btn2").click(function(){
        $("p").show();
    });
});
</script>
</head>
<body>

<p>This is a paragraph.</p>

<button class="btn1">Hide</button>
<button class="btn2">Show</button>

</body>
</html>


