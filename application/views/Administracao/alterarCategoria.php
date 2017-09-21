<div id="homebody">
    <?php
        $atributos = array('name'=>'formulario_cadastro', 'id'=>'formulario_cadastro');
		$btn = array('name'=>'btn_cadastrar', 'id'=>'botao1', 'class'=>'btn btn-warning');

        echo br();
		 echo "<table  id='diferente' style='width: 100%'>
        <tr>
        	<th width='40%'>Título</th>
        	<th width='60%'>Descrição</th>
       </tr>
        ";
        echo "<hr>";
			        
        echo form_open('Administracao/alterarCategoria/'.$CATEGORIA[0]->id, $atributos).
			"<tr><td>".		
			form_hidden('id', $CATEGORIA[0]->id).
			form_input('txt_titulo', $CATEGORIA[0]->titulo).br()."</td><td>".
			form_textarea('txt_descricao', $CATEGORIA[0]->descricao).br()."</td></tr>".

//               form_label("Título da categoria: ", "txt_titulo").
  //             form_input('txt_titulo').br().
    //           form_label("Descrição da categoria: ", "txt_descricao").
      //         form_input('txt_descricao').br().br().
                "<tr><td>".form_submit("btn_cadastrar", "Confirmar", $btn)."</td><td></td></tr>".
                form_close();
	echo "</table>";    
    ?>
</div>
