<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tour_photos extends CI_Controller {

	function __construct()
	{

		parent::__construct();
		$this->load->library('session');

	}


	public function index()
	 {		

	 	 $tour_id= $this->uri->segment('3');

        $data["result"] = $this->tp->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_photos',$data);
		$this->load->view('admin/footer');
	 }
	


		
	public function countTotalrow()
	{
     $data['query'] = $this->admin_model->countRow(); 
	}
}
?>