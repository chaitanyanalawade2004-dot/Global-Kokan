<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tour_category extends CI_Controller {

	function __construct()
	{


		parent::__construct();
		$this->load->model('admin/Tour_Category_Model','tc');
		         $this->load->library('session');

	}


	public function index()
	 {
        $data["result"] = $this->tc->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_category',$data);
		$this->load->view('admin/footer');
	 }
	

	  public function add_category()
	 {
	 	$this->load->view('admin/header');
		$this->load->view('admin/add_category');
		$this->load->view('admin/footer');
	 }


	  public function add_category_code()
	 {
	 	$this->tc->add();
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('Admin/tour_category'));	
	 }


	  public function edit_category($cat_id)
	 {
	 	$data['data']  = $this->tc->get_by_id($cat_id);
	 	
		$this->load->view('admin/header');
		$this->load->view('admin/edit_category', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_category_code($cat_id)
	 {
       $this->tc->edit($cat_id);
		redirect(base_url('admin/tour_category'));	
	 }

	  public function delete_tour_category($id)
	 {
       $this->tc->delete($id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour_category'));	
	 }
	
	public function countTotalrow()
	{
     $data['query'] = $this->admin_model->countRow(); 
	}
}
?>