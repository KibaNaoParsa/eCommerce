<div class="container">
    <div class="masthead">
        <div id="cadastro-e-login">
                    <?php
                        if(null != $this->session->userdata('logado')) {
                    echo "Seja bem-vindo: " . $this->session->userdata('administracao')->nome . " " .
                        $this->session->userdata('administracao')->sobrenome .
                        anchor(base_url("logout"), " Logout ");
                } else {
                    echo anchor(base_url("administracao"), "Cadastro ") .
                        anchor(base_url("login"), "Login");
                }
    					?>
         </div>

        <?php
            echo heading('Lojão do Terceirão', 3, 'class="muted"');
        ?>
        <ul class="nav nav-tabs">
                <li class="active"><?php echo anchor(base_url("Administracao"), "Home")?> </li>

        </ul>
    </div>

