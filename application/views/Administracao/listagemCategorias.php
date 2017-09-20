<div id="homebody">
    <?php
			//echo heading("Categorias", 3);       
       
        echo "<table style='width: 100%'>
        <tr>
        	<th>Título</th>
        	<th>Descrição</th>
        	<th></th>
        	<th></th>
        </tr>
        ";
        
        foreach($CATEGORIA as $c) {
				echo "<tr>
							<td>".$c->titulo."</td>
							<td>".$c->descricao."</td>
							<td>".anchor("Administracao/v_alterarCat/".$c->id, 
											" Alterar ", 'class= "btn btn-warning btn-xs"')."</td>
							<td>".anchor("Administracao/excluirCat/".$c->id, 
											" Excluir ", 'class= "btn btn-danger btn-xs"')."</td></tr>";
														        
        }
        
        echo "<td></td><td></td><td></td><td>".anchor("Administracao/v_cadastroCategoria", 
											" Novo ", 'class= "btn btn-info"')."</td>";
        echo "</table>";
			
    ?>
</div>

	<style>
	
		table, th, td {
			padding-bottom: 1%;
			text-align: left;
		}
	</style>