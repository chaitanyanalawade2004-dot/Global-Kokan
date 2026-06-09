<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	
	public function index()
	{
		$this->load->view('admin/login');
	}


	public function login_code()
	{
		$email = $this->input->post('email');
		$password = $this->input->post('password');

		$query = "SELECT * FROM admin WHERE email = '$email' AND password='$password'";
		$result = $this->db->query($query);  

		$count=$result->num_rows();
		
		if($count>0)
		{
			$row = $result->row();
			
			$this->session->set_userdata("admin_id",$row->admin_id);
			$this->session->set_userdata("first_name",$row->first_name);
			

			redirect(base_url('admin/Admin'));
		}
		else{

			$this->session->set_flashdata('message', 'Username or Password Invalid !');


			redirect(base_url('admin/login'));	
		}

	}

	public function Logout()
    {
        $this->session->sess_destroy();
        redirect('home');

}
	

	
}