<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {

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
		$this->load->view('contact');
		$this->load->view('footer');
	}

	
    
    	public function submitContact()
    {
         $name = str_replace("'", "''", $this->input->post("name"));
         $email = str_replace("'", "''", $this->input->post("email"));
	     $mobileno = str_replace("'", "''", $this->input->post("mobileno"));
	     $subject1 = str_replace("'", "''", $this->input->post("subject"));
	    $message1 = str_replace("'", "''", $this->input->post("message"));
       
        
        	

	    	 $to = "";
	         $subject = "abc.co.in";
	         
	    //     $message = "<b>Contact Details-<br><br>  Name : ".$name."<br> Email : ".$email."<br> Mobile : ".$mobileno."<br> Subject : ".$subject1."<br> Message : ".$message."</b>";
	         
	     // echo $message;exit;
	     
	              $message = '<html>
        <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
          <meta name="viewport" content="width=device-width">
          
          <title>Zournii Enquiry</title>
          <style>
          @media only screen and (max-width: 620px) {
            table[class=body] h1 {
              font-size: 28px !important;
              margin-bottom: 10px !important;
            }
            table[class=body] p,
                  table[class=body] ul,
                  table[class=body] ol,
                  table[class=body] td,
                  table[class=body] span,
                  table[class=body] a {
              font-size: 16px !important;
            }
            table[class=body] .wrapper,
                  table[class=body] .article {
              padding: 10px !important;
            }
            table[class=body] .content {
              padding: 0 !important;
            }
            table[class=body] .container {
              padding: 0 !important;
              width: 100% !important;
            }
            table[class=body] .main {
              border-left-width: 0 !important;
              border-radius: 0 !important;
              border-right-width: 0 !important;
            }
            table[class=body] .btn table {
              width: 100% !important;
            }
            table[class=body] .btn a {
              width: 100% !important;
            }
            table[class=body] .img-responsive {
              height: auto !important;
              max-width: 100% !important;
              width: auto !important;
            }
          }
          /* -------------------------------------
              PRESERVE THESE STYLES IN THE HEAD
          ------------------------------------- */
          @media all {
            .ExternalClass {
              width: 100%;
            }
            .ExternalClass,
                  .ExternalClass p,
                  .ExternalClass span,
                  .ExternalClass font,
                  .ExternalClass td,
                  .ExternalClass div {
              line-height: 100%;
            }
            .apple-link a {
              color: inherit !important;
              font-family: inherit !important;
              font-size: inherit !important;
              font-weight: inherit !important;
              line-height: inherit !important;
              text-decoration: none !important;
            }
            #MessageViewBody a {
              color: inherit;
              text-decoration: none;
              font-size: inherit;
              font-family: inherit;
              font-weight: inherit;
              line-height: inherit;
            }
            .btn-primary table td:hover {
              background-color: #34495e !important;
            }
            .btn-primary a:hover {
              background-color: #34495e !important;
              border-color: #34495e !important;
            }
          }
          </style>
        </head>
        <body class="" style="background-color: #f6f6f6; font-family: sans-serif; -webkit-font-smoothing: antialiased; font-size: 14px; line-height: 1.4; margin: 0; padding: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;">
          <table border="0" cellpadding="0" cellspacing="0" class="body" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background-color: #f6f6f6;">
            <tr>
              <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">&nbsp;</td>
              <td class="container" style="font-family: sans-serif; font-size: 14px; vertical-align: top; display: block; Margin: 0 auto; max-width: 680px; padding: 10px; width: 680px;">
                <div class="content" style="box-sizing: border-box; display: block; Margin: 0 auto; max-width: 680px; padding: 10px;">

                <table width="100%" cellspacing="0" cellpadding="0" style="mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;"> 
               <tr style="border-collapse:collapse;"> 
                <td align="center" style="padding:0;Margin:0;padding-bottom:20px;padding-top:20px; background-color:#fe4246"><img src="https://www.zournii.co.in/assets/img/logo.jpeg" alt style="display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic;" width="154"></td> 
               </tr> 
             </table>
      
                  <!-- START CENTERED WHITE CONTAINER -->
                  <span class="preheader" style="color: transparent; display: none; height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all; visibility: hidden; width: 0;"></span>
                  <table class="main" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%; background: #ffffff; border-radius: 3px;">
      
                    <!-- START MAIN CONTENT AREA -->
                    <tr>
                      <td class="wrapper" style="font-family: sans-serif; font-size: 14px; vertical-align: top; box-sizing: border-box; padding: 20px;">
                        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                      
                        <b>Hello Sir/Mam,</b> </br>
                        <p> New Contact Enquiry received </p>
                        <p style="font-size:15px">
                       <b> Name: </b>'.$name.'  <br>
                       <b> Email: </b>'.$email.'  <br>
                       <b>  Mobile No: </b>'.$mobileno.'  <br>
                       <b> Subject: </b>'.$subject1.'  <br>
                       <b> Message: </b>'.$message1.'  <br>
                        </p>
                        <br>
                         <h5> Please do connected with them..
                        </table>
      
                  <!-- START FOOTER -->
                  <div class="footer" style="clear: both; Margin-top: 10px; text-align: center; width: 100%;">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: separate; mso-table-lspace: 0pt; mso-table-rspace: 0pt; width: 100%;">
                      <tr>
                      <td class="content-block" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #fe4246; text-align: center;">
                      <span class="apple-link" style="color: #fe4246; font-size: 12px; text-align: center;">DLF Centre, Sansad Marg, Connaught Place, <br>New Delhi 110001, India</span>
                          
                        </td>
                      </tr>
                      <tr>
                        <td class="content-block powered-by" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #fe4246; text-align: center;">
                          Powered by <a href="https://www.zournii.co.in/" style="color: #fe4246; font-size: 12px; text-align: center; text-decoration: none;" target="_blank">www.zournii.co.in</a>.
                        </td>
                      </tr>
                      <tr>
                        <td class="content-block powered-by" style="font-family: sans-serif; vertical-align: top; padding-bottom: 10px; padding-top: 10px; font-size: 12px; color: #fe4246; text-align: center;">
                          
                        </td>
                      </tr>
                      
                    </table>
                  </div>
                  <!-- END FOOTER -->
      
                <!-- END CENTERED WHITE CONTAINER -->
                </div>
              </td>
              <td style="font-family: sans-serif; font-size: 14px; vertical-align: top;">&nbsp;</td>
            </tr>
          </table>
        </body>
      </html>';
      
     
	         
	         $header = "From:$email \r\n";
	         $header .= "Cc:$email \r\n";
	         $header .= "MIME-Version: 1.0\r\n";
	         $header .= "Content-type: text/html\r\n";
	         
	         $retval = mail ($to,$subject,$message,$header);


        $this->session->set_flashdata('message', 'Thank you, we have received your message.');
        redirect(base_url('contactus'));
    }


}