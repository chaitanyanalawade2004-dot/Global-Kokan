<?php
class Tour_Category_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function lists()
	{		

		$query = $this->db->get('tour_category');
		$query_result = $query->result();
		return $query_result;
	}



	function get_by_id($id)
	{
		$query = $this->db->where('cat_id', $id);
		$query = $this->db->get('tour_category');
		$query_result = $query->row();
		return $query_result;
	}


	function add()
	{

		$urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $this->input->post('cat_name'));
        $urltitle = preg_replace('!\-+!', '-', $urltitle);

		$cat_name = $this->input->post('cat_name');
		$data = array(

			"cat_name"=> $cat_name,
			"urltitle"=> $urltitle, 
			
		);

		// echo "<pre>";
		// print_r($data);

		$this->db->insert('tour_category',$data);  
	}

	function edit($id)
	{

		$urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $this->input->post('cat_name'));
        $urltitle = preg_replace('!\-+!', '-', $urltitle);

		$cat_name = $this->input->post('cat_name');

		$data = array(

			"cat_name"=> $cat_name, 
			"urltitle"=> $urltitle, 
		);

		$this->db->where('cat_id', $id);
		$this->db->update('tour_category', $data);
	}




	function delete($id)
	{
		$this -> db -> where('cat_id', $id);
		$this -> db -> delete('tour_category');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM tour_category");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
