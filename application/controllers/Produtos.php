<?php

    class Produtos extends CI_Controller {

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
            $this->load->view('html-header');
            $this->load->view('header', $data_header);
            $this->load->view('produto', $data_body);
            $this->load->view('footer');
            $this->load->view('html-footer');
        }

    }