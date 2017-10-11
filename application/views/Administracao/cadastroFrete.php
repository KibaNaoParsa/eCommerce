<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-secondary');

        echo br();

        echo form_open('Administracao/cadastroFrete', $atributos).
  					form_input(array('id'=>'txt_uf', 'name'=>'txt_uf', 'Placeholder'=>'UF de destino...', 'value'=>set_value('txt_uf'))) .br().                
  					form_input(array('id'=>'txt_pesomin', 'name'=>'txt_pesomin', 'Placeholder'=>'Peso mínimo (kg)...', 'value'=>set_value('txt_pesomin'))) .br().                
  					form_input(array('id'=>'txt_pesomax', 'name'=>'txt_pesomax', 'Placeholder'=>'Peso máximo (kg)...', 'value'=>set_value('txt_psomax'))) .br().                
  					form_input(array('id'=>'txt_adicional', 'name'=>'txt_adicional', 'Placeholder'=>'Adicional (em R$)...', 'value'=>set_value('txt_adicional'))) .br().                
  					form_input(array('id'=>'txt_preco', 'name'=>'txt_preco', 'Placeholder'=>'Preço (em R$)...', 'value'=>set_value('txt_preco'))) .br().br();
				
                echo br().form_submit("btn_cadastrar", "Confirmar", $btn).
                form_close();
    ?>
</div>
