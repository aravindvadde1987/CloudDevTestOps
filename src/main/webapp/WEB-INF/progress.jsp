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

		<h1 style="color: white;">Execution of test-suites</h1>


		<label for="cars" style="color: #FFFFFF;">Configuration:</label> <select
			name="repositories" id="repositories">
			<option value="PPS Service">select configuration from Helm Chart</option>
			<option value="Main">1.10</option>
			<option value="Dev">1.11</option>
			<option value="QA">1.12</option>
		</select> <br> <br> 
		<label for="cars" style="color: #FFFFFF;">Test-suite execution type</label> <select name="services" id="services">
			<option value="PPS Service">select type</option>
			<option value="PPS Service">Smoke</option>
			<option value="Contract Service">Regression</option>
		</select> <br> <br> 
		

		<table border="0" cellpadding="1" cellspacing="1">
			<tr>
				<br>
				<br>
				<td>&nbsp;</td>
				<td><input onclick="move1()" type="submit"
					value="start execution"></td>
			</tr>
		</table>

		<h4 style="color: white;">Progress Details</h4>
		<div id="myBar1"></div>
		<br> <br>
		<form method="post"
			action="${pageContext.request.contextPath }/launch">

			<table border="0" cellpadding="2" cellspacing="2">
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" id="launch"
						value="Launch your application for sanity testing" disabled></td>
				</tr>
			</table>
		</form>

		<br> <br> <br> <br> <a
			href="${pageContext.request.contextPath }/logout"
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

