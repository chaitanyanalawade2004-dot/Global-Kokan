<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller
{
    

    public function index() 
    {
    
        $this->load->view('header');
        $this->load->view('contacts');
        $this->load->view('footer');
    }

  public function email()
	{
		$firstname = $this->input->post('firstname');
		$email = $this->input->post('email');
		$number = $this->input->post('number');
		$message = $this->input->post('message');
	  $toEmail = "maheshpatil9144@gmail.com";
  
  
$mailHeaders = "Name: " . $firstname .
    "\r\n Email: ". $email  . 
    "\r\n Phone: ". $number  . 
    "\r\n Message: " . $message . "\r\n";

    if(mail($toEmail, $firstname, $mailHeaders)) {
        $message = "Your contact information is received successfully.";
    }
}

    
}