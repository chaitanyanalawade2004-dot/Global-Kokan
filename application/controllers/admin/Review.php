<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Review extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Review_Model','t');
		
		$this->load->library('session');

	}


	public function index()
	 {
        $data["result"] = $this->t->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/review',$data);
		$this->load->view('admin/footer');
	 }
	

	  public function add_review()
	 {
	 	// $data["category"] = $this->tc->lists();
	 	
	 	$this->load->view('admin/header');
		$this->load->view('admin/add_review');
		$this->load->view('admin/footer');
	 }


	  public function add_review_code()
	 {
	 	$this->t->add();
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/review'));	
	 }


	  public function edit_review($review_id)
	 {
	 	$data['data']  = $this->t->get_by_id($review_id);
		// $data["category"] = $this->tc->lists();

		$this->load->view('admin/header');
		$this->load->view('admin/edit_review', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_review_code($review_id)
	 {
       $this->t->edit($review_id);
		redirect(base_url('admin/review'));	
	 }

	  public function delete_review($id) 
	 {
       $this->t->delete($id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/review'));	
	 }
	
	
}
?>