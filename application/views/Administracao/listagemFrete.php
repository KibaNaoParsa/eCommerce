<div id="homebody">
    <?php
			//echo heading("Categorias", 3);       
       
        echo "<table style='width: 100%'>
        <tr>
        	<th>Destino</th>
        	<th>Peso (mín.)</th>
        	<th>Peso (máx.)</th>
        	<th>Adicional (R$)</th>
        	<th>Valor (R$)</th>
        	<th colspan='2'>Operações</th>
        </tr>
        ";
        
        foreach($transporte as $t) {
				echo "<tr>
							<td>".$t->uf."</td>
							<td>".$t->peso_de."</td>			
							<td>".$t->peso_ate."</td>
							<td>".$t->adicional_kg."</td>
							<td>".$t->preco."</td>
							<td>".anchor("Administracao/v_alterarFrete/".$t->id, 
											" Alterar ", 'class= "btn btn-warning btn-xs"')."</td>
							<td>".anchor("Administracao/excluirFrete/".$t->id, 
											" Excluir ", 'class= "btn btn-danger btn-xs"')."</td></tr>";
														        
        }
        
        echo "<td></td><td></td><td></td><td></td><td></td><td></td><td>".anchor("Administracao/v_cadastroFrete", 
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