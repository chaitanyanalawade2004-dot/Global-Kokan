<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Tour_Model','t');
		$this->load->model('admin/Tour_Category_Model','tc');
		$this->load->model('admin/Tour_Photos_Model','tp');
		$this->load->model('admin/Tour_Itinerary_Model','ti');
		$this->load->model('admin/GalleryModel','g');
		$this->load->model('admin/Review_Model','r');

		$this->load->library('session');

	}

	public function index()
	{
		$data["tour_category"] = $this->tc->lists();
		$data["tour"] = $this->t->lists();
		 $data["tour_photos"] = $this->tp->lists();
		 $data["tour_itinerary"] = $this->ti->lists();
		 $data["gallery"] = $this->g->lists();
		$data["review"] = $this->r->lists();

		$this->load->view('header', $data);
		$this->load->view('index');
		$this->load->view('footer');
	}

	



}