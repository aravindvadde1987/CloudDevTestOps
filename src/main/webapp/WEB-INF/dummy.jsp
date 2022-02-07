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
	<%
		
		 response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("/login");
		}
	
	%>
	Welcome, ${sessionScope.username }
	<br>

<h1 style="color:white;">Please choose you repository and service for instance creation and generate application url</h1>


  <label for="cars" style="color:#FFFFFF;">Repository:</label>
  <select name="repositories" id="repositories">
    <option value="Main">Main</option>
    <option value="Dev">Dev</option>
    <option value="QA">QA</option>
  </select>
  <br><br>
  <label for="cars" style="color:#FFFFFF;">Service:</label>
  <select name="services" id="services">
    <option value="service1">service1</option>
    <option value="service2">service2</option>
    <option value="service3">service3</option>
  </select>
<form method="post" action="${pageContext.request.contextPath }/progress">
		
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="next"></td>
			</tr>
		</table>
	</form>
  
   <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br> <br><br>
  	<a href="${pageContext.request.contextPath }/logout"  style="color:#FFFFFF;">Logout</a>
  	
</div>
</body>
</html>

