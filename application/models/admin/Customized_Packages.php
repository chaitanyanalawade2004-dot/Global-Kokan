<?php
class Customized_Packages extends CI_Model
{
	
	function lists()
	{		

		$query = $this->db->get('customized_packages');
		$query_result = $query->result();
		return $query_result;
	}


	function get_by_id($id)
	{
		$query = $this->db->where('customized_id', $id);
		$query = $this->db->get('customized_packages');
		$query_result = $query->row();
		return $query_result;
	}


	function add($tour_id)
	{

		$per_head = $this->input->post('per_head');
		$delux = $this->input->post('delux');
		$ac_delux = $this->input->post('ac_delux');
		

		$data = array(

			"per_head"=> $per_head, 
			"delux"=> $delux,
			"ac_delux"=> $ac_delux,
			"tour_id"=> $tour_id,
			
		);

		// echo "<pre>";
		// print_r($data);
		// exit;
		
		$this->db->insert('customized_packages',$data);  
	}

	function edit($tour_id,  $customized_id)
	{
		$per_head = $this->input->post('per_head');
		$delux = $this->input->post('delux');
		$ac_delux = $this->input->post('ac_delux');

		$data = array(
			"per_head"=> $per_head, 
			"delux"=> $delux,
			"ac_delux"=> $ac_delux,
			"tour_id"=> $tour_id,
		);

		$this->db->where('customized_id', $customized_id);
		$this->db->update('customized_packages', $data);
	}


	function delete($id)
	{
		$this -> db -> where('customized_id', $id);
		$this -> db -> delete('customized_packages');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM customized_packages");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
