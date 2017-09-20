<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-warning');

        echo br();

        echo form_open('Administracao/alterarCategoria/'.$CATEGORIA[0]->id, $atributos).
			form_hidden('id', $CATEGORIA[0]->id).
			form_input('txt_titulo', $CATEGORIA[0]->titulo).br().
			form_textarea('txt_descricao', $CATEGORIA[0]->descricao).br().

//               form_label("Título da categoria: ", "txt_titulo").
  //             form_input('txt_titulo').br().
    //           form_label("Descrição da categoria: ", "txt_descricao").
      //         form_input('txt_descricao').br().br().
                form_submit("btn_cadastrar", "Confirmar", $btn).
                form_close();
    ?>
</div>
