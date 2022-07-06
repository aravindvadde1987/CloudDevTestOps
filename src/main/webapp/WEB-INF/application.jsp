<!DOCTYPE html>
<html>
<head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
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
		<h2>Promotional Pricing Details</h2>

		<table>
			<tr>
				<th>UPC</th>
				<th>List Cost</th>
				<th>Promo Cost</th>
			</tr>
			<tr>
				<td>0001453901111</td>
				<td>1.99$</td>
				<td>1.49%</td>
			</tr>
			<tr>
				<td>0001453901112</td>
				<td>2.99$</td>
				<td>2.39$</td>
			</tr>
			<tr>
				<td>0001453901113</td>
				<td>1.49$</td>
				<td>0.99$</td>
			</tr>
			<tr>
				<td>0001453901114</td>
				<td>3.29$</td>
				<td>1.29$</td>
			</tr>
			<tr>
				<td>0001453901115</td>
				<td>2.79$</td>
				<td>1.99$</td>
			</tr>
		</table>
		<br>
		<br> <br>
		<br> <br>
		<br> <br> <a
			href="${pageContext.request.contextPath }/purge">Proceed with
			purging of Instance</a> <br>
		<br> <br> <a
			href="${pageContext.request.contextPath }/logout"
			style="color: #FFFFFF;">Logout</a>
	</div>
</body>
</html>

