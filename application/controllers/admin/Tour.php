<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Tour extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Tour_Model','t');
		$this->load->model('admin/Tour_Category_Model','tc');
		$this->load->model('admin/Tour_Photos_Model','tp');
		$this->load->model('admin/Tour_Itinerary_Model','ti');
		$this->load->model('admin/Tour_Dates_Model','td');
		$this->load->model('admin/Group_Fixed_Packages_Model','gf');
		$this->load->model('admin/Customized_Packages','cp');
		$this->load->library('session');

	}


	public function index()
	 {
        $data["result"] = $this->t->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour',$data);
		$this->load->view('admin/footer');
	 }
	

	  public function add_tour()
	 {
	 	$data["category"] = $this->tc->lists();
	 	
	 	$this->load->view('admin/header', $data);
		$this->load->view('admin/add_tour');
		$this->load->view('admin/footer');
	 }


	  public function add_tour_code()
	 {
	 	$this->t->add();
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour'));	
	 }


	  public function edit_tour($tour_id)
	 {
	 	$data['data']  = $this->t->get_by_id($tour_id);
		$data["category"] = $this->tc->lists();

		$this->load->view('admin/header');
		$this->load->view('admin/edit_tour', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_tour_code($tour_id)
	 {
       $this->t->edit($tour_id);
		redirect(base_url('admin/tour'));	
	 }

	  public function delete_tour($id)
	 {
       $this->t->delete($id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour'));	
	 }
	
	// Tour Photos

	 public function tour_photos($tour_id)
	 {	
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);
        $data["result"] = $this->tp->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_photos',$data);
		$this->load->view('admin/footer');
	 }

	  public function add_tour_photos($tour_id)
	 {
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);

	 	$this->load->view('admin/header');
		$this->load->view('admin/add_tour_photos', $data);
		$this->load->view('admin/footer');
	 }


	  public function add_tour_photos_code($tour_id)
	 {
	 	$this->tp->add($tour_id);
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour/tour_photos/'.$tour_id));	
	 }


	 //  public function edit_tour_photos($photos_id)
	 // {
	 // 	$data['data']  = $this->tp->get_by_id($photos_id);
	// 	$this->load->view('admin/header');
	// 	$this->load->view('admin/edit_tour_photos', $data);
	// 	$this->load->view('admin/footer');
	 // }

	 //  public function edit_tour_photos_code($photos_id)
	 // {
     //   $this->tp->edit($photos_id);
	// 	redirect(base_url('admin/tour_photos'));	
	 // }

	  public function delete_tour_photos($tour_id, $photos_id)
	 {
       $this->tp->delete($photos_id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour/tour_photos/'.$tour_id));	
	 }



	 // Tour Itinerary

	 public function tour_itinerary($tour_id)
	 {	
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);
        $data["result"] = $this->ti->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_itinerary',$data);
		$this->load->view('admin/footer');
	 }

	  public function add_tour_itinerary($tour_id)
	 {
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);

	 	$this->load->view('admin/header');
		$this->load->view('admin/add_tour_itinerary', $data);
		$this->load->view('admin/footer');
	 }


	  public function add_tour_itinerary_code($tour_id)
	 {
	 	$this->ti->add($tour_id);
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour/tour_itinerary/'.$tour_id));	
	 }


	  public function edit_tour_itinerary($tour_id, $iti_id)
	 {
	 	$data['data']  = $this->ti->get_by_id($iti_id);
	    $data['tour_detail']  = $this->t->get_by_id($tour_id);
	    $data['tour_id']  = $tour_id;

		$this->load->view('admin/header');
		$this->load->view('admin/edit_tour_itinerary', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_tour_itinerary_code($tour_id, $iti_id)
	 {
        $this->ti->edit($tour_id, $iti_id);
		redirect(base_url('admin/tour/tour_itinerary/'.$tour_id));	
	 }

	  public function delete_tour_itinerary($tour_id, $iti_id)
	 {
       $this->ti->delete($iti_id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour/tour_itinerary/'.$tour_id));	
	 }
	
	 // Tour Dates

	  public function tour_dates($tour_id)
	 {	
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);
        $data["result"] = $this->td->lists();
		$this->load->view('admin/header');
		$this->load->view('admin/tour_dates',$data);
		$this->load->view('admin/footer');
	 }

	  public function add_tour_dates($tour_id)
	 {
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);

	 	$this->load->view('admin/header');
		$this->load->view('admin/add_tour_dates', $data);
		$this->load->view('admin/footer');
	 }


	  public function add_tour_dates_code($tour_id)
	 {
	 	$this->td->add($tour_id);
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour/tour_dates/'.$tour_id));	
	 }


	  public function edit_tour_dates($tour_id, $date_id)
	 {
	 	$data['data']  = $this->td->get_by_id($date_id);
	    $data['tour_detail']  = $this->t->get_by_id($tour_id);
	    $data['tour_id']  = $tour_id;

		$this->load->view('admin/header');
		$this->load->view('admin/edit_tour_dates', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_tour_dates_code($tour_id, $date_id)
	 {
        $this->td->edit($tour_id, $date_id);
		redirect(base_url('admin/tour/tour_dates/'.$tour_id));	
	 }

	  public function delete_tour_dates($tour_id, $date_id)
	 {
       $this->td->delete($date_id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour/tour_dates/'.$tour_id));	
	 }

	 // Group Fixed Packages

	  public function group_fixed_packages($tour_id)
	 {	
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);
        $data["result"] = $this->gf->lists();


		$this->load->view('admin/header');
		$this->load->view('admin/group_fixed_packages',$data);
		$this->load->view('admin/footer');
	 }

	  public function add_group_fixed_packages($tour_id)
	 {
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);

	 	$this->load->view('admin/header');
		$this->load->view('admin/add_group_fixed_packages', $data);
		$this->load->view('admin/footer');
	 }


	  public function add_group_fixed_packages_code($tour_id)
	 {
	 	$this->gf->add($tour_id);
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour/group_fixed_packages/'.$tour_id));	
	 }


	  public function edit_group_fixed_packages($tour_id, $group_id)
	 {
	 	$data['data']  = $this->gf->get_by_id($group_id);
	    $data['tour_detail']  = $this->t->get_by_id($tour_id);
	    $data['tour_id']  = $tour_id;

		$this->load->view('admin/header');
		$this->load->view('admin/edit_group_fixed_packages', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_group_fixed_packages_code($tour_id, $group_id)
	 {
        $this->gf->edit($tour_id, $group_id);
		redirect(base_url('admin/tour/group_fixed_packages/'.$tour_id));	
	 }

	  public function delete_group_fixed_packages($tour_id, $group_id)
	 {
       $this->gf->delete($group_id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour/group_fixed_packages/'.$tour_id));	
	 }

	  //Customized Packages

	  public function customized_packages($tour_id)
	 {	
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);
        $data["result"] = $this->cp->lists();

		$this->load->view('admin/header');
		$this->load->view('admin/customized_packages',$data);
		$this->load->view('admin/footer');
	 }

	  public function add_customized_packages($tour_id)
	 {
	 	$data['tour_id']  = $tour_id;	
	 	$data['tour_detail']  = $this->t->get_by_id($tour_id);

	 	$this->load->view('admin/header');
		$this->load->view('admin/add_customized_packages', $data);
		$this->load->view('admin/footer');
	 }


	  public function add_customized_packages_code($tour_id)
	 {
	 	$this->cp->add($tour_id);
	 	$this->session->set_flashdata('message', 'Successfully Added..!');
		redirect(base_url('admin/tour/customized_packages/'.$tour_id));	
	 }


	  public function edit_customized_packages($tour_id, $customized_id)
	 {
	 	$data['data']  = $this->cp->get_by_id($customized_id);
	    $data['tour_detail']  = $this->t->get_by_id($tour_id);
	    $data['tour_id']  = $tour_id;

		$this->load->view('admin/header');
		$this->load->view('admin/edit_customized_packages', $data);
		$this->load->view('admin/footer');
	 }

	  public function edit_customized_packages_code($tour_id, $customized_id)
	 {
        $this->cp->edit($tour_id, $customized_id);
		redirect(base_url('admin/tour/customized_packages/'.$tour_id));	
	 }

	  public function delete_customized_packages($tour_id, $customized_id)
	 {
       $this->cp->delete($customized_id);
       $this->session->set_flashdata('message', 'Successfully Deleted..!');
		redirect(base_url('admin/tour/customized_packages/'.$tour_id));	
	 }
}
?>