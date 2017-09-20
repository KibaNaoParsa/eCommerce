<?php

    class Administracao extends CI_Controller {

        public $categorias;

        public function __construct() {
            parent::__construct();
            $this->load->model('categorias_model', 'modelcategorias');
            $this->load->model('produtos_model', 'modelprodutos');
            $this->categorias = $this->modelcategorias->listar_categorias();
        }

        public function index() {
            $this->load->helper('text');
            $data_header['categorias'] = $this->categorias;
            $this->load->view('Administracao/html-header');
            $this->load->view('Administracao/header', $data_header);
            $this->load->view('Administracao/inicial');
            $this->load->view('Administracao/footer');
            $this->load->view('Administracao/html-footer');
        }

		  // Início de chamada de view 

		  public function v_categorias() {
            $this->load->helper('text');
            $data_header['categorias'] = $this->categorias;

            $data['CATEGORIA'] = $this->db->get('categorias')->result();

            $this->load->view('Administracao/html-header');
            $this->load->view('Administracao/header', $data_header);
            $this->load->view('Administracao/listagemCategorias', $data);
            $this->load->view('Administracao/footer');
            $this->load->view('Administracao/html-footer');
						  
		  }

			public function v_alterarCat($id) {
            $this->load->helper('text');
            $data_header['categorias'] = $this->categorias;
            
				$this->db->where('categorias.id', $id);
            $data['CATEGORIA'] = $this->db->get('categorias')->result();

            $this->load->view('Administracao/html-header');
            $this->load->view('Administracao/header', $data_header);
            $this->load->view('Administracao/alterarCategoria', $data);
            $this->load->view('Administracao/footer');
            $this->load->view('Administracao/html-footer');
			
			}


        public function v_cadastroCategoria() {
            $this->load->helper('text');
            $data_header['categorias'] = $this->categorias;

            $this->load->view('Administracao/html-header');
            $this->load->view('Administracao/header', $data_header);
            $this->load->view('Administracao/cadastroCategoria');
            $this->load->view('Administracao/footer');
            $this->load->view('Administracao/html-footer');
        }
        
        public function v_cadastroProduto() {
            $this->load->helper('text');
            $data_header['categorias'] = $this->categorias;
            
            $data['CATEGORIA'] = $this->db->get('categorias')->result();

            $this->load->view('Administracao/html-header');
            $this->load->view('Administracao/header', $data_header);
            $this->load->view('Administracao/cadastroProduto', $data);
            $this->load->view('Administracao/footer');
            $this->load->view('Administracao/html-footer');
        }
        
			// Fim de chamada de Waguin boiola

			public function cadastroCategoria() {
				$data['titulo'] = $this->input->post('txt_titulo');
				$data['descricao'] = $this->input->post('txt_descricao');
				
				if($this->db->insert('categorias', $data)) {
					redirect("Administracao");				
				} else {
					echo "Não foi possível realizar a operação";
				}			
			}

			public function cadastroProduto() {
				
				$data['codigo'] = $this->input->post('txt_codigo');
				$data['titulo'] = $this->input->post('txt_titulo');				
				$data['descricao'] = $this->input->post('txt_descricao');
				$data['preco'] = $this->input->post('txt_preco');
				$data['largura_caixa_mm'] = $this->input->post('txt_largura');			
				$data['altura_caixa_mm'] = $this->input->post('txt_altura');
				$data['comprimento_caixa_mm'] = $this->input->post('txt_comprimento');
				$data['peso_gramas'] = $this->input->post('txt_peso');
				$data['ativo'] = 1;

				$this->db->insert('produtos', $data);
				
				$codigo = $this->db->query("SELECT id from produtos ORDER BY id desc limit 1")->result();
				
				$item = $this->input->get_post('categoria');
				if(!empty($item)) {
					$qtd = count($item);
				}
			
				for ($i = 0; $i < $qtd; $i++) {
					if(!empty($item[$i])) {
						
						foreach ($codigo as $c) {						
							$dat['produto'] = $c->id;
							$dat['categoria'] = $item[$i];
						}
										
						$this->db->insert('produtos_categoria', $dat);
					}
				}
				
				redirect("Administracao");
				
			}


    }

