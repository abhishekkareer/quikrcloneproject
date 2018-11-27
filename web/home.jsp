<!DOCTYPE html>
<html>
<head>
<style>
body {margin:0;}
* {
    box-sizing: border-box;
}
.overlay {
    height: 0%;
    width: 100%;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    overflow-y: hidden;
    transition: 0.5s;
}

.overlay-content {
    position: relative;
    top: 25%;
    width: 100%;
    text-align: center;
    margin-top: 30px;
}

.overlay a {
    padding: 8px;
    text-decoration: none;
    font-size: 36px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.overlay a:hover, .overlay a:focus {
    color: #f1f1f1;
}

.overlay .closebtn {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 70px;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    position: fixed;
    top: 0;
    width: 100%;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
img {
    display: block;
    margin-left: 100px;
    margin-right: 500px;
}

.p {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}


ol {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #f1f1f1;
    position: fixed;
    height: 100%;
    overflow: auto;
}


.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #B0E0E6;
  border: none;
  color: black;
  text-align: center;
  font-size: 15px;
  padding: 20px;
  width: 220px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 15px;
  vertical-align:middle;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.btn-group .button {
    background-color: #4CAF50; /* Green */
    border: 1px solid green;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    width: 150px;
    display: block;
}

.btn-group .button:not(:last-child) {
    border-bottom: none; /* Prevent double borders */
}

.btn-group .button:hover {
    background-color: #3e8e41;
}
</style>
<script>
function funn()
{
    window.open("TEST.jsp");
}
function openNav() {
  document.getElementById("myNav").style.height = "100%";
}

function closeNav() {
  document.getElementById("myNav").style.height = "0%";
}
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    document.getElementById("navbar").style.padding = "30px 10px";
    document.getElementById("logo").style.fontSize = "25px";
  } else {
    document.getElementById("navbar").style.padding = "80px 10px";
    document.getElementById("logo").style.fontSize = "35px";
  }
}
</script>

</head>
<body background="imgg.jpg">
    

<div id="myNav" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
      
    <a href="">Contact Us</a>
    <a href="">help?</a>
    <a href="logoutservlet">Logout</a>
  </div>
</div>
        
<ul ><!--id="navbar"-->
    <li><span style="font-size:30px;cursor:pointer;color:white;" onclick="openNav()">&#9776;</span></li>
  <li><a class="active" href="home.jsp">Home</a></li>
  <li><a href="postanad.jsp" id="logo">Post an Ad</a></li>
  <li><a href="TEST.jsp">Buy/Sell</a></li>
  <li><a href="profile.jsp">Profile</a></li>
  <li><a href="About.jsp">About</a></li>
  <li><div class="topnav">
  <div class="search-container">
    <form action="search.jsp">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit">search</button>
    </form>
  </div>
</div></li>
<%
        String name=(String)session.getAttribute("unamee");
        String lname=(String)session.getAttribute("lname2");
        String s1=(String)session.getAttribute("age");
        String pro=(String)session.getAttribute("proo");
        String s2=(String)session.getAttribute("salary");
        String username=(String)session.getAttribute("usernamee");
        session.setAttribute("es", name);
              session.setAttribute("age",s1);
              session.setAttribute("proo",pro);
              session.setAttribute("salary",s2);
              session.setAttribute("usernamee",username);
              session.setAttribute("lname3",lname);
        %>
<li style="float:right;color:white;"><%out.println("<font size='6'>");
 out.println("<b>");
        out.println("welcome");
                        out.println("</b>");
out.println(name);
       
                                out.println("</font>");%></li>
  
</ul>

<div style="padding:20px;margin-top:30px;height:1500px;">

    <ol><center>
  <li><button class="button" onclick="funn()"style="vertical-align:middle"><span>VEHICLES </span></button></li>

    <li><button class="button" onclick="funn()" ><span>PROPERTY </span></button></li>
<li><button class="button" style="vertical-align:middle"><span>ELECTRONICS </span></button></li>
  <li><button class="button" onclick="funn()"style="vertical-align:middle"><span>BOOKS </span></button></li>
  <li><button class="button" onclick="funn()"style="vertical-align:middle"><span>JOBS </span></button></li>
  <li><button class="button" onclick="funn()"style="vertical-align:middle"><span>KIDS & TOYS </span></button></li>
  <li><button class="button" onclick="funn()" style="vertical-align:middle"><span>ENTERTAINMENT </span></button></li>
  <li><button class="button" onclick="funn()"style="vertical-align:middle"><span>FURNITURE & DECOR </span></button></li>
  <li><button class="button" onclick="funn()" style="vertical-align:middle"><span>EVENTS </span></button></li>
</center></ol>
<!--
<div class="btn-group">
  <button class="button">Button</button>
  <button class="button">Button</button>
  <button class="button">Button</button>
  <button class="button">Button</button>
</div>-->
</div>


  

                                
</body>
<footer>
                                    <img src="QUIKR CLONE.png">
                                </footer>
</html>
