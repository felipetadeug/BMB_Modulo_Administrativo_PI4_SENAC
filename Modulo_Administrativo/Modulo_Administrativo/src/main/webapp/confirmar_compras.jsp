<%-- 
    Document   : confirmar_compras
    Created on : 29/11/2017, 22:24:42
    Author     : felipe.tgeraldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>BMB - Confirmar Compra</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">	

	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

	<meta charset="UTF-8">
	<script type="text/javascript" src="confirmar_compras.js"></script>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Bring My Beer</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						
					</ul>

					<ul class="nav navbar-nav navbar-right hidden-sm hidden-md hidden-lg">
						<li><a href="#">Manter Marca</a></li>
						<li><a href="#">Manter Produto</a></li>
						<li><a href="#">Manter Tipo</a></li>
						<li><a href="#">Manter Estoque</a></li>
						<li><a href="#">Manter Descontos</a></li>
						<li><a href="#">Extrair Relatórios</a></li>
						<li><a href="#">Confirmar Compra</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Usuário <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Início</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Sair</a></li>
							</ul>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>

		<div class="container">
			<div class="hidden-xs col-md-3 col-lg-3">
				<div class="panel panel-default">
					<div class="panel-heading"><b>Operações</b></div>
					<div class="panel-body">
						<div class="list-group">
							<a href="#" class="list-group-item"><b>Manter Marca</b></a>
							<a href="#" class="list-group-item"><b>Manter Produto</b></a>
							<a href="#" class="list-group-item"><b>Manter Tipo</b></a>
							<a href="#" class="list-group-item"><b>Manter Estoque</b></a>
							<a href="#" class="list-group-item"><b>Manter Descontos</b></a>
							<a href="#" class="list-group-item"><b>Extrair Relatório</b></a>
							<a href="#" class="list-group-item"><b>Confirmar Compra</b></a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-9">
				<h1>Confirmar Compra</h1>
				<hr>
				<p>Aqui você pode confirmar ou reprovar compras efetuadas no sistema.</p>

				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#confirmar">Confirmar</button>
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cancelar">Cancelar</button>

				<div class="table-responsive">
					<table id="tabela" class="table table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>Data</th>
								<th>Qtd. de Produtos</th>
								<th>Valor (R$)</th>
								<th>Confirmado</th>
								<th>Cancelado</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0</td>
								<td>22/09/2017</td>
								<td>4</td>
								<td>5</td>
								<td>false</td>
								<td>false</td>
							</tr>						
						</tbody>						
					</table>					
				</div>
			</div>
		</div>

		
		<!-- Modal - Confirmar -->                    
		<div class="modal fade" id="confirmar" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><b>Confirmar</b></h3>
					</div>

					<div class="modal-body">
						<form method="" action="">
							<h3>Tem certeza que deseja confirmar esta compra?</h3>
							<input type="hidden" name="id">
							<br>
							<button type="submit" class="btn btn-success">Confirmar</button>
						</form>
					</div>
				</div>				      
			</div>
		</div>

		<!-- Modal - Cancelar -->                    
		<div class="modal fade" id="cancelar" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><b>Cancelar</b></h3>
					</div>

					<div class="modal-body">
						<form method="" action="">
							<h3>Tem certeza que deseja cancelar esta compra?</h3>
							<input type="hidden" name="id">
							<br>
							<button type="submit" class="btn btn-danger">Cancelar</button>
						</form>
					</div>
				</div>				      
			</div>
		</div>
	</div>

	<script>
		$("#tabela").DataTable({			
			info: false,
			bLengthChange: false,
			pageLength: 5,
			"oLanguage": {
				"sSearch": "Pesquisar",
				"oPaginate": {
					"sNext": "Proximo",
					"sPrevious": "Anterior"
				}
			}
		});
	</script>
</body>
</html>