<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-warning');

        echo br();
			        
        echo form_open('Administracao/alterarProduto/'.$PRODUTO[0]->id, $atributos).
					form_input('txt_codigo', $PRODUTO[0]->codigo) .br().
  					form_input('txt_titulo', $PRODUTO[0]->titulo) .br().                
  					form_input('txt_descricao', $PRODUTO[0]->descricao) .br().                
  					form_input('txt_preco', $PRODUTO[0]->preco) .br().                
  					form_input('txt_largura', $PRODUTO[0]->largura_caixa_mm) .br().                
  					form_input('txt_altura', $PRODUTO[0]->altura_caixa_mm) .br().                
  					form_input('txt_comprimento', $PRODUTO[0]->comprimento_caixa_mm) .br().              
  					form_input('txt_peso', $PRODUTO[0]->peso_gramas) .br().br();                


					foreach ($CATEGORIA as $c) {
						echo	form_checkbox("categoria[]", $c->id, FALSE) . form_label( $c->titulo, "txt_1i") . br();
													
					}

//               form_label("Título da categoria: ", "txt_titulo").
  //             form_input('txt_titulo').br().
    //           form_label("Descrição da categoria: ", "txt_descricao").
      //         form_input('txt_descricao').br().br().
              echo br(). form_submit("btn_cadastrar", "Confirmar", $btn).
                form_close(); 
    ?>
</div>
