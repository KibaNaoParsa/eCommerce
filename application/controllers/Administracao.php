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
        


			public function cadastroCategoria() {
				$data['titulo'] = $this->input->post('txt_titulo');
				$data['descricao'] = $this->input->post('txt_descricao');
				
				if($this->db->insert('categorias', $data)) {
					redirect("Administracao");				
				} else {
					echo "Não foi possível realizar a operação";
				}			
			}

    }
