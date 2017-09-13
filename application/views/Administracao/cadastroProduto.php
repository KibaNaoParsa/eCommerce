<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-warning');

        echo br();

        echo form_open('Administracao/cadastroProduto', $atributos).
					form_input(array('id'=>'txt_codigo', 'name'=>'txt_codigo', 'Placeholder'=>'Código...', 'value'=>set_value('txt_codigo'))) .br().
  					form_input(array('id'=>'txt_titulo', 'name'=>'txt_titulo', 'Placeholder'=>'Título...', 'value'=>set_value('txt_titulo'))) .br().                
  					form_input(array('id'=>'txt_descricao', 'name'=>'txt_descricao', 'Placeholder'=>'Descrição...', 'value'=>set_value('txt_descricao'))) .br().                
  					form_input(array('id'=>'txt_preco', 'name'=>'txt_preco', 'Placeholder'=>'Preço (sem R$)...', 'value'=>set_value('txt_preco'))) .br().                
  					form_input(array('id'=>'txt_largura', 'name'=>'txt_largura', 'Placeholder'=>'Largura...', 'value'=>set_value('txt_largura'))) .br().                
  					form_input(array('id'=>'txt_altura', 'name'=>'txt_altura', 'Placeholder'=>'Altura...', 'value'=>set_value('txt_altura'))) .br().                
  					form_input(array('id'=>'txt_comprimento', 'name'=>'txt_comprimento', 'Placeholder'=>'Comprimento...', 'value'=>set_value('txt_comprimento'))) .br().              
  					form_input(array('id'=>'txt_peso', 'name'=>'txt_peso', 'Placeholder'=>'Peso...', 'value'=>set_value('txt_peso'))) .br().br();                

					foreach ($CATEGORIA as $c) {
						echo	form_checkbox("categoria[]", $c->id, FALSE) . form_label( $c->titulo, "txt_1i") . br();
													
					}
                form_submit("btn_cadastrar", "Confirmar", $btn).
                form_close();
    ?>
</div>
