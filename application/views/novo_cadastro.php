<div id="homebody">
    <div class="alinhado-centro borda-base espaco-vertical">
        <h3>Seja bem-vindo à nossa loja.</h3>
        <p>Use o formulário abaixo para se cadastrar.</p>
    </div>
    <div class="row-fluid">
        <?php
            echo validation_errors();
            echo form_open(base_url('cadastro/adicionar'), array('id'=>'form_cadastro')) . 
            form_input(array('id'=>'nome', 'name'=>'nome', 'Placeholder'=>'Nome', 'value' => set_value('nome'))) .
            form_input(array('id'=>'sobrenome', 'name'=>'sobrenome', 'Placeholder'=>'Sobrenome', 'value'=>set_value('sobrenome'))) .
            form_input(array('id'=>'rg', 'name'=>'rg', 'Placeholder'=>'Rg', 'value' => set_value('rg'))) .
            form_input(array('id'=>'data_nascimento', 'name'=>'data_nascimento', 'Placeholder'=>'Data de Nascimento', 'value'=>set_value('data_nascimento'))) .
            form_input(array('id'=>'sexo', 'name'=>'sexo', 'Placeholder'=>'Sexo(M/F)', 'value'=>set_value('sexo'))) .
            "</div><div class='span4'>" . 
            form_input(array('id'=>'cep', 'name'=>'cep', 'Placeholder'=>'CEP', 'value'=>set_value('cep'))) . 
            form_input(array('id'=>'rua', 'name'=>'rua', 'Placeholder'=>'Rua', 'value'=>set_value('rua'))) . 
            form_input(array('id'=>'bairro', 'name'=>'bairro', 'Placeholder'=>'Bairro', 'value'=>set_value('bairro'))) . 
            form_input(array('id'=>'cidade', 'name'=>'cidade', 'Placeholder'=>'Cidade', 'value'=>set_value('cidade'))) . 
            form_input(array('id'=>'estado', 'name'=>'numero', 'Placeholder'=>'Número', 'value'=>set_value('numero'))) . 
            "</div><div class='span4'>" . 
            form_input(array('id'=>'telefone', 'name'=>'telefone', 'Placeholder'=>'Telefone', 'value'=>set_value('telefone'))) . 
            form_input(array('id'=>'celular', 'name'=>'celular', 'Placeholder'=>'Celular', 'value'=>set_value('celular'))) .
            form_input(array('id'=>'email', 'name'=>'email', 'Placeholder'=>'E-mail', 'value'=>set_value('email'))) . 
            form_password(array('id'=>'senha', 'name'=>'senha', 'Placeholder'=>'Senha', 'value'=>set_value('senha'))) . 
            form_submit('btn_cadastrar', 'Cadastrar') .
            "</div>" . 
            form_close();        
        ?>
    </div>
</div>
