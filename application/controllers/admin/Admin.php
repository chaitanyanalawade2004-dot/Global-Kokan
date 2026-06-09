<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Users_Model');
		$this->load->model('admin/Tour_Category_Model','tc');
		$this->load->model('admin/Tour_Model','t');
		$this->load->model('admin/GalleryModel','g');
		$this->load->model('admin/Review_Model','r');
	}
	
	public function index()
	 {

	 	$data["cat_count"] = count($this->tc->lists());
	 	$data["tour_count"] = count($this->t->lists());
	 	$data["gallery_count"] = count($this->g->lists());
	 	$data["review_count"] = count($this->r->lists());

	
		$this->load->view('admin/header');
		$this->load->view('admin/dashboard', $data);
		$this->load->view('admin/footer');
	 }


	 public function user_list()
	 {

	 $data['u_list'] = $this->Users_Model->user_list();

	
		$this->load->view('admin/header');
		$this->load->view('admin/user_list', $data);
		$this->load->view('admin/footer');	

	 }


	  public function add_user()
	 {
	 	$this->load->view('admin/header');
		$this->load->view('admin/add_user');
		$this->load->view('admin/footer');
	 }


	  public function add_user_code()
	 {
	 	$this->Users_Model->add_user();
		redirect(base_url('Admin/admin/user_list'));	
	 }


	  public function edit_user($user_id)
	 {
	 	$data['u_data']  = $this->Users_Model->get_user_by_id($user_id);
		
		$this->load->view('admin/header');
		$this->load->view('admin/edit_user', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_user_code($user_id)
	 {
       $this->Users_Model->edit_user_code($user_id);
		redirect(base_url('Admin/admin/user_list'));	
	 }

	 //  public function delete_user_code($user_id)
	 // {
     //   $this->Users_Model->delete_user($user_id);
	// 	redirect(base_url('admin/Admin/user_list'));	
	 // }
	
	public function countTotalrow()
	{
     $data['query'] = $this->admin_model->countRow(); 
	}
}
?>