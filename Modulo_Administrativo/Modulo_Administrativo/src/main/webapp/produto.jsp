<%-- 
    Document   : produto
    Created on : 29/11/2017, 22:20:48
    Author     : felipe.tgeraldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>BMB - Manter Produto</title>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">	

	<link rel="stylesheet" type="text/css" href="style.css">

	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">

	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	
	<meta charset="UTF-8">
	<script type="text/javascript" src="produto.js"></script>
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
				<h1>Manter Produtos</h1>
				<hr>
				<p>Aqui você pode cadastrar, consultar, alterar e remover produtos.</p>

				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#cadastrar">Cadastrar</button>
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#alterar">Alterar</button>
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#remover">Remover</button>

				<div class="table-responsive">
					<table id="tabela" class="table table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>Produto</th>
								<th>ID - Marca Produto</th>	
								<th>Marca Produto</th>
								<th>ID - Tipo Produto</th>
								<th>Tipo Produto</th>
								<th>Preço (R$)</th>
								<th>Descrição</th>
								<th>Data Cadastro</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0</td>
								<td>Cerveja 300ml</td>
								<td>27</td>
								<td>Skol</td>
								<td>1</td>
								<td>Cerveja</td>
								<td>5</td>
								<td>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</td>
								<td>03/12/2017</td>
							</tr>	
						</tbody>						
					</table>					
				</div>
			</div>
		</div>

		<!-- Modal - Cadastrar -->
		<div class="modal fade" id="cadastrar" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><b>Cadastrar</b></h3>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<form method="" action="">
								<label for="nome">Nome - Produto:</label>
								<input type="text" class="form-control" name="nome" required>

								<br/>

								<label for="img">Adicionar imagem:</label>
								<input type="file" name="img" accept="image/*" required>

								<br/>

								<div class="row">
									<div class="form-group col-md-6 col-lg-6">
										<label for="marca_produto">Marca de Produto:</label>
										<select name="tipo_produto" class="form-control" required>											
											<option value=""></option>
										</select>
									</div>

									<div class="form-group col-md-6 col-lg-6">
										<label for="tipo_produto">Tipo do Produto:</label>
										<select name="tipo_produto" class="form-control" required>											
											<option value=""></option>
										</select>
									</div>
								</div>			

								<br />

								<div class="row">
									<div class="form-group col-md-6 col-lg-6">
										<label for="preco">Preço:</label>
										<input type="text" class="form-control" name="preco" required>	
									</div>
								</div>

								<br />

								<label for="descricao">Descrição - Produto:</label>
								<textarea class="form-control" name="descricao" rows="4" cols="50"></textarea>

								<br />

								<button type="reset" class="btn btn-danger">Limpar</button>
								<button type="submit" class="btn btn-success">Cadastrar</button>	
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal - Alterar -->
		<div class="modal fade" id="alterar" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><b>Alterar</b></h3>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<form method="" action="">
								<label for="nome">Nome - Produto:</label>
								<input type="text" class="form-control" name="nome" required>

								<br/>

								<label for="img">Adicionar imagem:</label>
								<input type="file" name="img" accept="image/*" required>

								<br/>

								<div class="row">
									<div class="form-group col-md-6 col-lg-6">
										<label for="marca_produto">Marca de Produto:</label>
										<select name="marca_produto" class="form-control" required>
											<option value="0">Original</option>				
											<option value="27">Skol</option>
										</select>
									</div>

									<div class="form-group col-md-6 col-lg-6">
										<label for="tipo_produto">Tipo do Produto:</label>
										<select name="tipo_produto" class="form-control" required>	
											<option value="0">Vinho</option>			
											<option value="1">Cerveja</option>
										</select>
									</div>
								</div>			

								<br />

								<div class="row">
									<div class="form-group col-md-6 col-lg-6">
										<label for="preco">Preço:</label>
										<input type="text" class="form-control" name="preco" required>	
									</div>
								</div>

								<br />

								<label for="descricao">Descrição - Produto:</label>
								<textarea class="form-control" name="descricao" rows="4" cols="50"></textarea>
								
								<input type="hidden" name="id">
								<br/>
								<button type="submit" class="btn btn-success">Alterar</button>
							</form>							
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Modal - Remover -->                    
		<div class="modal fade" id="remover" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h3 class="modal-title"><b>Remover</b></h3>
					</div>

					<div class="modal-body">
						<form method="" action="">
							<h3>Tem certeza que deseja deletar este registro?</h3>
							<input type="hidden" name="id">
							<br>
							<button type="submit" class="btn btn-danger">Deletar</button>
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