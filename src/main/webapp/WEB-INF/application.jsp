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

#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	left: 50%;
	bottom: 30px;
	font-size: 17px;
}

#snackbar.show {
	visibility: visible;
	-webkit-animation: fadein 0.5s, fadeout 0.5s 2.5s;
	animation: fadein 0.5s, fadeout 0.5s 2.5s;
}

@
-webkit-keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
keyframes fadein {
	from {bottom: 0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@
-webkit-keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}

}
@
keyframes fadeout {
	from {bottom: 30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}
</style>
</head>
<body>

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
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<a id="snackbar" onclick="myFunction()"
		href="${pageContext.request.contextPath }/logout">Logout</a>

	<script>
		function myFunction() {
			var x = document.getElementById("snackbar");
			x.className = "show";
			setTimeout(function() {
				x.className = x.className.replace("show", "");
			}, 3000);
		}
	</script>
</body>
</html>

