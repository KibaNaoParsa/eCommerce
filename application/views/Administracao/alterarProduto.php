<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-secondary');

			foreach($BOOL as $b) {
				if ($b == 0)
					$valor[] = FALSE;
				if ($b == 1)
					$valor[] = TRUE;
								
			}

			$i = 0;
        echo br();
			        
        echo form_open('Administracao/alterarProduto/'.$PRODUTO[0]->id, $atributos).
        			form_hidden('id', $PRODUTO[0]->id).
					form_label('Código: ', 'txt_codigo').					
					form_input('txt_codigo', $PRODUTO[0]->codigo) .br().
					form_label('Título: ', 'txt_titulo').
  					form_input('txt_titulo', $PRODUTO[0]->titulo) .br().                
  					form_label('Descrição: ', 'txt_descricao').br().
  					form_textarea('txt_descricao', $PRODUTO[0]->descricao) .br().br();
					echo "<h3>Categorias:</h3>".br();  					
  										foreach ($CATEGORIA as $c) {
						echo	form_checkbox("categoria[]", $c->id, $valor[$i]) . form_label( $c->titulo, "txt_1i") . br();
						$i++;							
					}         
					echo  br().					
					form_label('Preço (R$): ', 'txt_preco').
					form_input('txt_preco', $PRODUTO[0]->preco) .br().                
  					form_label('Largura (mm): ', 'txt_largura').
  					form_input('txt_largura', $PRODUTO[0]->largura_caixa_mm) .br().                
					form_label('Altura (mm): ', 'txt_altura').
					form_input('txt_altura', $PRODUTO[0]->altura_caixa_mm) .br().                
					form_label('Comprimento (mm): ', 'txt_comprimento').
					form_input('txt_comprimento', $PRODUTO[0]->comprimento_caixa_mm) .br().              
					form_label('Peso (g): ', 'txt_peso').
  					form_input('txt_peso', $PRODUTO[0]->peso_gramas) .br().
  					form_label('Ativo (1) ou Inativo (0): ', 'txt_atividade').
					form_input('txt_atividade', $PRODUTO[0]->ativo).br();  					              


//               form_label("Título da categoria: ", "txt_titulo").
  //             form_input('txt_titulo').br().
    //           form_label("Descrição da categoria: ", "txt_descricao").
      //         form_input('txt_descricao').br().br().
              echo br(). form_submit("btn_cadastrar", "Confirmar", $btn).
                form_close(); 
    ?>
</div>
