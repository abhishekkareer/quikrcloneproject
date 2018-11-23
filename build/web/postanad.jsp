<!DOCTYPE html>
<html>
<head>
    <!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />

	<!-- Web-Fonts -->
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900" 	type="text/css" media="all">
		<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700,800" 		type="text/css" media="all">
	<!-- //Web-Fonts -->
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
.upload {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    align-items:center; 
}
.upload + label {
    width: 200px;
    height:40px;
    font-size: 1em;
    font-weight: 500;
    color: white;
    line-height: 2.6em;
    text-transform: uppercase;
    text-align: center;
    background-color: #ef494f;
    display: inline-block;
    border-radius: 10px;
    box-shadow: 0px 3px 0px #a73337;
    transition: 150ms;
}

.upload:focus + label
{
    .upload:focus + label {
    outline: 1px dotted #000;
    outline: -webkit-focus-ring-color auto 5px;
}

.upload + label:hover {
    background-color: #ff6c71;
    box-shadow: 0px 5px 0px #d03338;
    cursor:pointer;
}
div {
    
}
</style>
</head>
<body>
    <%
        String name=(String)session.getAttribute("unamee");
        %>
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
  <li><a href="buyorsell.jsp">Buy/Sell</a></li>
  <li><a href="profile.jsp">Profile</a></li>
  <li><a href="About.jsp">About</a></li>
  <li><div class="topnav">
  <div class="search-container">
    <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit">search</button>
    </form>
  </div>
</div></li>
<li style="float:right;color:white;"><%out.println("<font size='6'>");
 out.println("<b>");
        out.println("welcome");
                        out.println("</b>");
out.println(name);
       
                                out.println("</font>");%></li>
  
</ul>
<!--
<div style="padding:20px;margin-top:300px;height:1500px;background-color: #dcdcdc;
    width: 300px;
    border: 9px solid green;
    margin: 20px;">

    <form action="postadd.jsp">
        <table border="2">
            <tr>
                <th>enter the name</th>
                <td><input type="text" name="name"></td>
            </tr>        
            <tr>
                <th>catagory</th>
                <td>
                    <select name="cat">
        <option value="book">Books</option>
        <option value="veh">vehice</option>
        <option value="comp">computer</option>
        <option value="pro">property</option>
        <option value="other">other</option>
      </select>
                </td>
            </tr>
            <tr>
                <th>image</th>
                <td><input type="file" name="photo"></td>
            </tr>
            <tr>
                <th>Price</th>
                <td><input type="text" name="price"></td>
            </tr>
            <tr>
                <td>
            <tr>
                <td colspan="2">
            <input type="submit" value="post add">
                </td> </tr></table>
    </form>

</div>
-->
<div class="container">
    </br></br></br>
		<h4>Post an ad</h4>

		<div class="contact">
			<form action="postadd.jsp" method="post">
				<input type="text" Name="brand" placeholder="BRAND" required="">
				<input type="text" Name="modelno" placeholder="MODEL NO" required="">
				<input type="email" Name="email" placeholder="EMAIL" required="">
				<input type="text" Name="mobilenumber" placeholder="PHONE NUMBER" required="">
                                <input type="text" Name="year" placeholder="YEAR OF PURCHASE" required="">
                                <input type="text" Name="price" placeholder="SELLING PRICE" required="">
                                <input type="text" Name="city" placeholder="AREA" required="">
                                <input type="file" name="file" id="file" class="upload" />
                                <label for="file" >Choose a file</label>
                        
				<div class="send-button">
					<input type="submit" value="POST AD">
				</div>
			</form>
		</div>

	</div>

  


</body>
</html>



	

	
	