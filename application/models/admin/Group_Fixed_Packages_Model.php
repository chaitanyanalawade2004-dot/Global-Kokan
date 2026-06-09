<?php
class Group_Fixed_Packages_Model extends CI_Model
{
	
	function lists()
	{		

		$query = $this->db->get('group_fixed_packages');
		$query_result = $query->result();
		return $query_result;
	}


	function get_by_id($id)
	{
		$query = $this->db->where('group_id', $id);
		$query = $this->db->get('group_fixed_packages');
		$query_result = $query->row();
		return $query_result;
	}


	function add($tour_id)
	{
		$title = $this->input->post('title');
		$per_person = $this->input->post('per_person');
		

		$data = array(

			"title"=> $title, 
			"per_person"=> $per_person,
			"tour_id"=> $tour_id,
			
		);

		// echo "<pre>";
		// print_r($data);
		// exit;
		

		$this->db->insert('group_fixed_packages',$data);  
	}

	function edit($tour_id,  $group_id)
	{

		$title = $this->input->post('title');
		$per_person = $this->input->post('per_person');

		$data = array(

			"title"=> $title, 
			"per_person"=> $per_person,
			"tour_id"=> $tour_id,
		);


		$this->db->where('group_id', $group_id);
		$this->db->update('group_fixed_packages', $data);
	}


	function delete($id)
	{
		$this -> db -> where('group_id', $id);
		$this -> db -> delete('group_fixed_packages');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM group_fixed_packages");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
