<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/GalleryModel','t');
	
		$this->load->library('session');

	}


	public function index()
	 {
        $data["result"] = $this->t->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/gallery',$data);
		$this->load->view('admin/footer');
	 }
	

	  public function add_gallery()
	 {
	 	// $data["category"] = $this->tc->lists();
	 	
	 	$this->load->view('admin/header');
		$this->load->view('admin/add_gallery');
		$this->load->view('admin/footer');
	 }


	  public function add_gallery_code()
	 {
	 	$this->t->add();
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/gallery'));	
	 }


	  public function edit_gallery($gallery_id)
	 {
	 	$data['data']  = $this->t->get_by_id($gallery_id);
		// $data["category"] = $this->tc->lists();

		$this->load->view('admin/header');
		$this->load->view('admin/edit_gallery', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_gallery_code($gallery_id)
	 {
       $this->t->edit($gallery_id);
		redirect(base_url('admin/gallery'));	
	 }

	  public function delete_gallery($id)
	 {
       $this->t->delete($id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/gallery'));	
	 }
	
	
}
?>