<?php
defined('BASEPATH') OR exit('No direct script access allowed');

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
		$this->load->model('admin/Review_Model','r');
		$this->load->library('session');

	}


	public function index()
	 {

	 	$data["tour_category"] = $this->tc->lists();
		$data["tour"] = $this->t->lists();
		 $data["tour_photos"] = $this->tp->lists();
		 $data["tour_itinerary"] = $this->ti->lists();

        $data["tour_detail"] = $this->t->get_by_urltitle($urltitle);
		$this->load->view('header');
		$this->load->view('tour_detail',$data);
		$this->load->view('footer');
	 }
	


	public function detail($urltitle)
	 {
	     $data["urltitle"] = $urltitle;
	     
	 	$data["tour_category"] = $this->tc->lists();
		$data["tour"] = $this->t->lists();
		 $data["tour_photos"] = $this->tp->lists();
		 $data["tour_itinerary"] = $this->ti->lists();
		  $data["tour_dates"] = $this->td->lists();
		   $data["group_packages"] = $this->gf->lists();
		  $data["customized_packages"] = $this->cp->lists();
			$data["review"] = $this->r->lists();
        $data["tour_detail"] = $this->t->get_by_urltitle($urltitle);
        $data["tour_id"] = $data["tour_detail"]->tour_id;
        
		$this->load->view('header',$data);
		$this->load->view('tour_detail');
		$this->load->view('footer');
	 }
	 
	 
	public function submitBooking()
{
    // Collect data from POST
    $name = $this->input->post("name");
    $email = $this->input->post("email");
    $mobileno = $this->input->post("mobileno");
    $no_of_person = $this->input->post("no_of_person");
    $date = $this->input->post("date");
    $tour_id = $this->input->post("tour_id");
    $message = $this->input->post("message");

    // Prepare data for insertion
    $data = array(
        'name' => $name,
        'email' => $email,
        'mobileno' => $mobileno,
        'no_of_person' => $no_of_person,
        'date' => $date,
        'tour_id' => $tour_id,
        'message' => $message
    );

    // Insert into the database
    $this->db->insert('customer_booking', $data);

    // Optionally handle the redirect
    $this->session->set_flashdata('message', 'Thank you, Booking Successfully Done');
    
    // Assuming $urltitle is available or you can get it from post or route
    $urltitle = $this->input->post("urltitle"); // or however you set it
    redirect(base_url('tour/detail/' . $urltitle));
}

	

	
}
?>