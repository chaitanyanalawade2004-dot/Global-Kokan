<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Tour_Model','t');
		$this->load->model('admin/Tour_Category_Model','tc');
		$this->load->library('session');

	}

	public function index()
	{
		$data["tour_category"] = $this->tc->lists();
		$data["tour"] = $this->t->lists();

		$this->load->view('header',$data);
		$this->load->view('about');
		$this->load->view('footer');
	}

	



}