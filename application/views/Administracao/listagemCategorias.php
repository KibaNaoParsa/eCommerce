<div id="homebody">
    <?php
			//echo heading("Categorias", 3);       
       
        echo "<table class='	w3-table-all w3-tiny' style='width: 100%'>
        <tr>
        	<th>Título</th>
        	<th>Descrição</th>
        	<th colspan='2'>Operações</th>
        </tr>
        ";
        echo "<hr>";
        foreach($CATEGORIA as $c) {
				echo "<tr>
							<td>".$c->titulo."</td>
							<td>".$c->descricao."</td>
							<td >".anchor("Administracao/v_alterarCat/".$c->id, 
											" Editar ", 'class= "btn btn-warning btn-xs"')."</td>
							<td>".anchor("Administracao/excluirCat/".$c->id, 
											" Excluir ", 'class= "btn btn-danger btn-xs"')."</td></tr>";
														        
        }
        
        echo "<td></td><td></td><td></td>	<td>".anchor("Administracao/v_cadastroCategoria", 
											" Novo item ", 'class= "btn btn-info"')."</td>";
        echo "</table>";
			
    ?>
</div>

	<style>
	
		table, th, td {
			padding-bottom: 1%;
			text-align: left;
		}
	</style>