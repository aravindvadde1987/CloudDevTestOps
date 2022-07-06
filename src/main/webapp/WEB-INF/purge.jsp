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

		<h1 style="color: white;">Purge Kubernetes Instance</h1>


		<table border="0" cellpadding="1" cellspacing="1">
			<tr>
				<br>
				<br>
				<td>&nbsp;</td>
				<td><input onclick="move1()" type="submit"
					value="Purge Environment"></td>
			</tr>
		</table>

		<h4 style="color: white;">Progress Details</h4>
		<div id="myBar1"></div>
		<br> <br>

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

