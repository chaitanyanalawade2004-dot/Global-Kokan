<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tour_itinerary extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Tour_Itinerary_Model','tc');
		         $this->load->library('session');
	}


	public function index()
	 {
        $data["result"] = $this->tc->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_itinerary',$data);
		$this->load->view('admin/footer');
	 }
	

	  public function add_tour_itinerary()
	 {
	 	$this->load->view('admin/header');
		$this->load->view('admin/add_tour_itinerary');
		$this->load->view('admin/footer');
	 }


	  public function add_tour_itinerary_code()
	 {
	 	$this->tc->add();
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('Admin/tour_itinerary'));	
	 }


	  public function edit_tour_itinerary($iti_id)
	 {
	 	$data['data']  = $this->tc->get_by_id($iti_id);
	 	
		$this->load->view('admin/header');
		$this->load->view('admin/edit_tour_itinerary', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_tour_itinerary_code($iti_id)
	 {
       $this->tc->edit($iti_id);
		redirect(base_url('admin/tour_itinerary'));	
	 }

	  public function delete_tour_itinerary($id)
	 {
       $this->tc->delete($id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour_itinerary'));	
	 }
	
	public function countTotalrow()
	{
     $data['query'] = $this->admin_model->countRow(); 
	}
}
?>