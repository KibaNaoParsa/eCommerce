<div id="homebody">
    <div class="alinhado-centro borda-base espaco-vertical">
        <h3>Seja bem-vindo à área administrativa.</h3>
        <p>Aqui você poderá incluir, alterar ou excluir registros
        		nas tabelas de categorias, produtos ou frete.</p>
    </div>
    <div class="row-fluid">
		<div align="left" id="conteudo" class="col-md-4">
 			<div class="dropdown">
  				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Categorias <span class="caret"></span>
  				</button>
	  			<ul class="dropdown-menu">
					<?php echo anchor(base_url("Administracao/v_cadastroCategoria"), "Cadastro de Categoria").br();
							echo " <li class='divider'></li> ";
	 	   	  			echo anchor(base_url("Administracao/v_edicaoCategoria"), "Edição de Categoria");
							echo " <li class='divider'></li> ";
	 	   	  			echo anchor(base_url("Administracao/v_exclusaoCategoria"), "Exclusão de Categoria"); ?>

  				</ul>
			</div> 
    	</div>
		<div align="center" id="conteudo" class="col-md-4">
 			<div class="dropdown">
  				<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Produtos <span class="caret"></span>
  				</button>
	  			<ul class="dropdown-menu">
					<?php echo anchor(base_url("Administracao/v_cadastroProduto"), "Cadastro de Produto").br();
							echo " <li class='divider'></li> ";
	 	   	  			echo anchor(base_url("Administracao/v_edicaoProduto"), "Edição de Produto");
							echo " <li class='divider'></li> ";
	 	   	  			echo anchor(base_url("Administracao/v_exclusaoProduto"), "Exclusão de Produto"); ?>

  				</ul>
			</div> 
    	</div>
      <div align="right" id="conteudo" class="col-md-4">
        <?php echo anchor(base_url("Administracao/v_tabelaFrete"), "Tabela de Frete", 'class= "btn btn-primary"'); ?>
      </div>    
   </div>

</div>
