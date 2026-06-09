
<?php
class Users_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function user_list()
	{		

		$query = $this->db->get('users');
		$query_result = $query->result();
		return $query_result;
	}



	function get_user_by_id($user_id)
	{
		$query = $this->db->where('user_id', $user_id);
		$query = $this->db->get('users');
		$query_result = $query->row();
		return $query_result;
	}


	function add_user()
	{
		$name = $this->input->post('name');
		$password = $this->input->post('password');
		$email = $this->input->post('email');
		$mobile = $this->input->post('mobile');
		$about = $this->input->post('about');
       $image = $this->input->post('image');

		$data = array(

			"name"=> $name, 
			"password"=>$password,
			"email"=>$email,
			"mobile"=>$mobile,
			"about"=>$about,
			"image"=>$image,
		);

		// echo "<pre>";
		// print_r($data);

		$this->db->insert('users',$data);  
	}

	function edit_user_code($user_id)
	{

		$name = $this->input->post('name');
		$password = $this->input->post('password');
		$email = $this->input->post('email');
		$mobile = $this->input->post('mobile');
		$about = $this->input->post('about');
		$image = $this->input->post('image');

		$data = array(

			"name"=> $name, 
			"password"=>$password,
			"email"=>$email,
			"mobile"=>$mobile,
			"about"=>$about,
			"image"=>$image,
		);

		$this->db->where('user_id', $user_id);
	 	$this->db->update('users', $data);
	}




	function delete_user($user_id)
	{
		$this -> db -> where('user_id', $user_id);
		$this -> db -> delete('users');
	}

	
public function countRow(){
$query = $this->db->query("SELECT *,count(user_id) AS num_of_time FROM users");
    // print_r($query->result());
    return $query->result();
}
	

}
?>
