<div id="homebody">
    <div class="alinhado-centro borda-base espaco-vertical">
        <h3>Seja bem-vindo à área administrativa.</h3>
        <p>Aqui você poderá incluir, alterar ou excluir registros
        		nas tabelas de categorias, produtos ou frete.</p>
    </div>
    <div class="row-fluid">
        <div align="left" id="conteudo" class="col-md-4">
        <?php echo anchor(base_url("Administracao/v_cadastroCategoria"), "Cadastro de Categoria", 'class= "btn btn-primary"'); ?>
        </div>
        <div align="center" id="conteudo" class="col-md-4">
        <?php echo anchor(base_url("Administracao/v_cadastroProduto"), "Cadastro de Produto", 'class= "btn btn-primary"'); ?>
        </div>
        <div align="right" id="conteudo" class="col-md-4">
        <?php echo anchor(base_url("Administracao/v_tabelaFrete"), "Tabela de Frete", 'class= "btn btn-primary"'); ?>
        </div>
    </div>
</div>