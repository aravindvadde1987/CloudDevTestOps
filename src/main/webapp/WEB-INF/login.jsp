<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
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
<h1 style="color:white;">CloudDevTestOps - With Intelligent automation</h1>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
   <h3>Login Page</h3>

	${error}
	<form method="post" action="${pageContext.request.contextPath }/login">
		
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td style="color:white;">UserName</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td style="color:white;">Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>


</body>
</html>
