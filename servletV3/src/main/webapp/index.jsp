<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>les Servlet</title>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

	<div class="accordion" id="accordionExample">
		<div class="card">
			<div class="card-header" id="headingOne">
				<h2 class="mb-0">
					<button class="btn btn-link" type="button" data-toggle="collapse"
						data-target="#collapseOne" aria-expanded="true"
						aria-controls="collapseOne">Port occupé coté client</button>
				</h2>
			</div>

			<div id="collapseOne" class="collapse show"
				aria-labelledby="headingOne" data-parent="#accordionExample">
				<div class="card-body"><%=request.getRemotePort()%></div>
			</div>
		</div>
		<div class="card">
			<div class="card-header" id="headingTwo">
				<h2 class="mb-0">
					<button class="btn btn-link collapsed" type="button"
						data-toggle="collapse" data-target="#collapseTwo"
						aria-expanded="false" aria-controls="collapseTwo">Adresse
						IP client</button>
				</h2>
			</div>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionExample">
				<div class="card-body"><%=request.getRemoteAddr()%></div>
			</div>
		</div>
		<div class="card">
			<div class="card-header" id="headingThree">
				<h2 class="mb-0">
					<button class="btn btn-link collapsed" type="button"
						data-toggle="collapse" data-target="#collapseThree"
						aria-expanded="false" aria-controls="collapseThree">Nom
						d'hôte client</button>
				</h2>
			</div>
			<div id="collapseThree" class="collapse"
				aria-labelledby="headingThree" data-parent="#accordionExample">
				<div class="card-body"><%=request.getRemoteHost()%></div>
			</div>
		</div>
		<div class="card">
			<div class="card-header" id="headingfour">
				<h2 class="mb-0">
					<button class="btn btn-link collapsed" type="button"
						data-toggle="collapse" data-target="#collapsefour"
						aria-expanded="false" aria-controls="collapsefour">nom
						utilisateur client</button>
				</h2>
			</div>
			<div id="collapsefour" class="collapse" aria-labelledby="headingfour"
				data-parent="#accordionExample">
				<div class="card-body"><%=request.getRemoteUser()%></div>
			</div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingfive">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapsefive"
					aria-expanded="false" aria-controls="collapsefive">Nom du serveur</button>
			</h2>
		</div>
		<div id="collapsefive" class="collapse" aria-labelledby="headingfive"
			data-parent="#accordionExample">
			<div class="card-body"><%=request.getServerName()%></div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingsix">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapsesix"
					aria-expanded="false" aria-controls="collapsesix">Port occupé coté serveur</button>
			</h2>
		</div>
		<div id="collapsesix" class="collapse" aria-labelledby="headingsix"
			data-parent="#accordionExample">
			<div class="card-body"><%=request.getServerPort()%></div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingseven">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapseseven"
					aria-expanded="false" aria-controls="collapseseven">Type de dispatcher</button>
			</h2>
		</div>
		<div id="collapseseven" class="collapse"
			aria-labelledby="headingseven" data-parent="#accordionExample">
			<div class="card-body"><%=request.getDispatcherType()%></div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingeight">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapseeight"
					aria-expanded="false" aria-controls="collapseeight">Nom du procotole utilisé pour la requête</button>
			</h2>
		</div>
		<div id="collapseeight" class="collapse"
			aria-labelledby="headingeight" data-parent="#accordionExample">
			<div class="card-body"><%=request.getScheme()%></div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingnine">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapsenine"
					aria-expanded="false" aria-controls="collapsenine">Verbe HTTP utilisé</button>
			</h2>
		</div>
		<div id="collapsenine" class="collapse" aria-labelledby="headingnine"
			data-parent="#accordionExample">
			<div class="card-body"><%=request.getMethod()%></div>
		</div>
	</div>
	<div class="card">
		<div class="card-header" id="headingten">
			<h2 class="mb-0">
				<button class="btn btn-link collapsed" type="button"
					data-toggle="collapse" data-target="#collapseten"
					aria-expanded="false" aria-controls="collapseten">la requête est sécurisé ?</button>
			</h2>
		</div>
		<div id="collapseten" class="collapse" aria-labelledby="headingten"
			data-parent="#accordionExample">
			<div class="card-body"><%=request.isSecure()%></div>
		</div>
	</div>

</body>
</html>
