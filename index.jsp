<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Zoo</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap/scripts/jquery.min.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    
</head>

<body background="bg.jpg" style="background-size: cover;">
   <!-- <div class="loader_bg">
    <div class="loader" ></div> <h3 style="margin-left: 45%;">loading...</h3>
    </div>-->

    <div class="menu-bar" >

        <ul id="myDIV" style="margin-right: 150px;">
            <a href=""><img src="logo.jpg" alt="" width="100" height="90"   style=" margin-top: 5px;"></a>
            <li class=" li active" style="margin-left: 10px; background-color: brown;"> <a href="#"><i class="fa fa-home"></i>Home</a> </li>
            <li class=" li "><a href="#">About Us</a></li>
            <li class=" li "><a href="#">Home</a></li>
            <li class=" li "><a href="#">Home</a></li>
            <li class=" li "><a href="#">Home</a></li>
            <li class=" li "><a href="#">Contact</a></li>
        </ul>
    </div>
    <br>
	<form action="./download.jsp">
     <select name="select" class="sel">
        <option value="amazon">AMAZON.COM</option>
    </select>
    <input class="btn" type="submit" value="SEARCH & DOWNLOAD">
    </form>
<script>
    
    var header = document.getElementById("myDIV");
    var btns = header.getElementsByClassName("li");
    for (var i = 0; i < btns.length; i++) {
        btns[i].addEventListener("click", function () {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
        });
    }
</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script>setTimeout(function(){
    $('.loader_bg').fadeToggle();
},6000);
</script>

    
</body>

</html>