<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
#myBar1 {
	width: 1%;
	height: 20px;
	background-color: #04AA6D;
}

body, html {
	height: 100%;
	margin: 0;
}

.bg {
	/* The image used */
	background-image:
		url("https://www2.deloitte.com/content/dam/Deloitte/ch/Images/header_images/services/strategy-operations/deloitte-ch-devops-landscape-banner.jpg/_jcr_content/renditions/cq5dam.web.1400.350.desktop.jpeg");
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
		<%
			response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("username") == null) {
			response.sendRedirect("/login");
		}
		%>
		Welcome, ${sessionScope.username } <br>

		<h1 style="color: white;">Kubernetes Instance Creation</h1>


		<label for="cars" style="color: #FFFFFF;">Repository:</label> <select
			name="repositories" id="repositories">
			<option value="PPS Service">select GIT branch</option>
			<option value="Main">dev</option>
			<option value="Dev">release</option>
			<option value="QA">master</option>
		</select> <br>
		<br> <label for="cars" style="color: #FFFFFF;">Service-1:
		</label> <select name="services" id="services">
			<option value="PPS Service">select service</option>
			<option value="PPS Service">PPS Service</option>
			<option value="Contract Service">Contract Service</option>
			<option value="Vendor Service">Vendor Service</option>
		</select> <br>
		<br> <label for="cars" style="color: #FFFFFF;">Service-2:
		</label> <select name="services1" id="services1">
			<option value="PPS Service">select service</option>
			<option value="PPS Service">PPS Service</option>
			<option value="Contract Service">Contract Service</option>
			<option value="Vendor Service">Vendor Service</option>
		</select> <br>
		<br> <label for="cars" style="color: #FFFFFF;">Service-3:
		</label> <select name="services2" id="services2">
			<option value="PPS Service">select service</option>
			<option value="PPS Service">PPS Service</option>
			<option value="Contract Service">Contract Service</option>
			<option value="Vendor Service">Vendor Service</option>
		</select> <br>
		<br>
		<p style="color: #FFFFFF;">ETL Load:</p>
		  <input type="radio" id="html" name="fav_language" value="HTML">
		  <label style="color: #FFFFFF;">Yes</label><br>   <input
			type="radio" id="css" name="fav_language" value="CSS">   <label
			style="color: #FFFFFF;">No</label><br>

		<table border="0" cellpadding="1" cellspacing="1">
			<tr>
				<br>
				<br>
				<td>&nbsp;</td>
				<td><input onclick="move1()" type="submit"
					value="Create Environment"></td>
			</tr>
		</table>

		<h4 style="color: white;">Progress Details</h4>
		<div id="myBar1"></div>
		<br> <br>
		<form method="post"
			action="${pageContext.request.contextPath }/progress">
			<table border="0" cellpadding="1" cellspacing="1">
				<tr>
					<td>&nbsp;</td>
					<td><input id="launch" type="submit"
						value="Proceed for execution of test-suites" disabled></td>
				</tr>
			</table>
		</form>

		<br>
		<br> <br>
		<br> <a href="${pageContext.request.contextPath }/logout"
			style="color: #FFFFFF;">Logout</a>
		<script>
			var i = 0;
			function move1() {
				if (i == 0) {
					i = 1;
					var elem = document.getElementById("myBar1");
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
	</div>
</body>
</html>

