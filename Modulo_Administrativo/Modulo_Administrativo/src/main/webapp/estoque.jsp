<%-- 
    Document   : estoque
    Created on : 29/11/2017, 22:23:52
    Author     : felipe.tgeraldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>BMB - Estoque</title>
		
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

		<meta name="viewport" content="width=device-width, initial-scale=1.0">	

		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

		<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

		<meta charset="UTF-8">
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
					<h1>Estoque</h1>
					<hr>
					<p>Aqui você pode gerenciar o estoque dos produtos cadastrados no sistema.</p>

					<h4 class="func_estoque">Adicionar Itens</h4>
					<div class="row">					
						<form method="" action="">
							<div class="form-group col-md-6 col-lg-6">
								<label for="item">Selecionar item:</label>
								<select name="item" class="form-control" required>											
									<option value="itens">Item</option>
								</select>
							</div>

							<div class="form-group col-md-2 col-lg-2">
								<label for="qtd">Quantidade:</label>
								<input type="number" class="form-control" name="qtd" required>
							</div>

							<div class="col-md-4 col-lg-4">
								<label for="qtd">Ação:</label>
								<br>
								<button type="submit" class="btn btn-success col-xs-12 col-sm-12 col-md-12 col-lg-12">Adicionar</button>
							</div>	
						</form>
					</div>

					<h4 class="func_estoque" >Movimentação de Estoque - Filtro</h4>
					<div class="row">					
						<form method="" action="">
							
							<div class="form-group col-md-8 col-lg-8">
								<label for="item">Selecionar item:</label>
								<select name="item" class="form-control" required>											
									<option value="itens">Item</option>
								</select>
							</div>

							<div class="col-md-4 col-lg-4">
								<label for="qtd">Ação:</label>
								<br>
								<button type="submit" class="btn btn-success col-xs-12 col-sm-12 col-md-12 col-lg-12">Adicionar</button>
							</div>	
						</form>
					</div>

					<div class="table-responsive tabela_estoque">
						<table id="tabela" class="table table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Item</th>
									<th>Data Entrada</th>
									<th>Data Saída</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<th></th>
									<th></th>
									<td></td>
								</tr>						
							</tbody>						
						</table>					
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