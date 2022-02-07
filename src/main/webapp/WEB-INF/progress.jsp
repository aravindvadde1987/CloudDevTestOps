<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#myProgress1 {
  width: 100%;
  background-color: #ddd;
}

#myProgress2 {
  width: 100%;
  background-color: #ddd;
}

#myProgress3 {
  width: 100%;
  background-color: #ddd;
}

#myProgress4 {
  width: 100%;
  background-color: #ddd;
}

#myBar1 {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
#myBar2 {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
#myBar3 {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
#myBar4 {
  width: 1%;
  height: 30px;
  background-color: #04AA6D;
}
body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("https://www2.deloitte.com/content/dam/Deloitte/ch/Images/header_images/services/strategy-operations/deloitte-ch-devops-landscape-banner.jpg/_jcr_content/renditions/cq5dam.web.1400.350.desktop.jpeg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body>
<div class="bg">

<h1 style="color:white;">Fetch your code from GITHUB</h1>

<h1 style="color:white;">CI/CD Process</h1>

<h1 style="color:white;">Upload your artifact to cloud</h1>
  <br>
   <br> <br>
   
<button onclick="move4()">Proceed</button>
  
<h3 style="color:white;" >Generating your Cloud Service URL</h3>

<div id="myProgress4">
  <div id="myBar4"></div>
</div>
 <br>
   <br> <br>

<form method="post" action="${pageContext.request.contextPath }/launch">
		
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" id= "launch" value="Launch your application" disabled></td>
			</tr>
		</table>
	</form>

<br><br><br> <br><br>
  	<a href="${pageContext.request.contextPath }/logout"  style="color:#FFFFFF;">Logout</a>

<script>
var i = 0;
function move1() {
  if (i == 0) {
    i = 1;
    var elem = document.getElementById("myBar4");
    var width = 1;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= 100) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
      }
    }
  }
}
function move2() {
	  if (i == 0) {
	    i = 1;
	    var elem = document.getElementById("myBar4");
	    var width = 1;
	    var id = setInterval(frame, 20);
	    function frame() {
	      if (width >= 100) {
	        clearInterval(id);
	        i = 0;
	      } else {
	        width++;
	        elem.style.width = width + "%";
	      }
	    }
	  }
	}
function move3() {
	  if (i == 0) {
	    i = 1;
	    var elem = document.getElementById("myBar4");
	    var width = 1;
	    var id = setInterval(frame, 30);
	    function frame() {
	      if (width >= 100) {
	        clearInterval(id);
	        i = 0;
	      } else {
	        width++;
	        elem.style.width = width + "%";
	      }
	    }
	  }
	}
function move4() {
	  if (i == 0) {
	    i = 1;
	    var elem = document.getElementById("myBar4");
	    var width = 1;
	    var id = setInterval(frame, 40);
	    function frame() {
	      if (width >= 100) {
	        clearInterval(id);
	        i = 0;
	      } else {
	        width++;
	        elem.style.width = width + "%";
	      }
	    }
	  }
	  document.getElementById("launch").disabled = false;
	}
</script>

</body>
</html>
