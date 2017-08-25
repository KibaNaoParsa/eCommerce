<?php defined('BASEPATH') or exit('No direct script access allowed');

class Carrinho extends CI_Controller {
  
    private $categorias;
    
    public function __construct() {
        parent::__construct();
        $this->load->model('categorias_model', 'modelcategorias');
        $this->categorias = $this->modelcategorias->listar_categorias();
    }
    
    public function index() {
        $data_header['categorias'] = $this->categorias;
       
	if(null != $this->session->userdata('logado')) {
		$sessao = $this->session->userdata();
		$estado = $sessao['cliente']->estado;
		$data['frete'] = $this->frete_transportadora($estado);
	} else {
		$data['frete'] = null;
	}

	$this->load->view('html-header');
        $this->load->view('header', $data_header);
        $this->load->view('carrinho', $data);
        $this->load->view('footer');
        $this->load->view('html-footer');
        
    }
    
    public function adicionar() {
      $data = array('id' => $this->input->post('id'),
                    'qty' => $this->input->post('quantidade'),
                    'price' => $this->input->post('preco'),
                    'name' => $this->input->post('nome'),
                    'altura' => $this->input->post('altura'),
                    'largura' => $this->input->post('largura'),
                    'comprimento' => $this->input->post('comprimento'),
                    'peso' => $this->input->post('peso'),
                    'options' => null,
                    'url' => $this->input->post('url'),
                    'foto' => $this->input->post('foto'));
                    $this->cart->insert($data);
                    redirect(base_url("carrinho"));
                    
    }
    
    public function atualizar() {
        foreach($this->input->post() as $item) {
            if(isset($item['rowid'])) {
                $data = array('rowid' => $item['rowid'], 'qty' => $item['qty']);
                $this->cart->update($data);
            }
        }
    }
    
    public function remover($rowid) {
        $data = array('rowid' => $rowid, 'qty' => 0);
        $this->cart->update($data);
        redirect(base_url('carrinho'));
    }
 
    public function frete_transportadora($estado_destino) {
	$peso = 0;
	foreach($this->cart->contents() as $item) {
		$peso += ($item['peso'] * $item['qty']);
	}
	$peso = ceil($peso/1000);
	$custo_frete = $this->db->query("SELECT * FROM tb_transporte_preco WHERE
					ucase(uf) = ucase('".$estado_destino."') and
					peso_ate >= " . $peso . "order by peso_ate desc limit 1")->result();
	if(count($custo_frete) < 1) {
		$custo_frete = $this->db->query("SELECT * from tb_transporte_preco where
						ucase(uf) = ucase('".$estado_destino."') order by
						peso_ate desc limit 1")->result();
		print_r($custo_frete);
		if(count($custo_frete) < 1) {
			$custo_frete = $this->db->query("select * from tb_transporte_preco order by
							peso_ate desc limit 1")->result();
		}
		
	}
	
	$adicional = 0;

	if($peso > $custo_frete[0]->peso_ate) {
		$adicional = ($peso - $custo_frete[0]->peso_ate) * $custo_frete[0]->adicional_kg;
	}

	$preco_frete = ($custo_frete[0]->preco + $adicional);

	return $preco_frete;
		
	}

 
	
  
}
