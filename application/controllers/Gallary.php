<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallary extends CI_Controller {

		function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Tour_Model','t');
		$this->load->model('admin/Tour_Category_Model','tc');
		$this->load->model('admin/GalleryModel','g');
		$this->load->library('session');


	}
	
	public function index()
	{
		$data["tour_category"] = $this->tc->lists();
		$data["tour"] = $this->t->lists();
		$data["gallery"] = $this->g->lists();

		$this->load->view('header',$data);
		$this->load->view('gallary');
		$this->load->view('footer');
	}

	



}