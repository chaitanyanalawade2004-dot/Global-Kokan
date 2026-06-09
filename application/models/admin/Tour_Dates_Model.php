<?php
class Tour_Dates_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function lists()
	{		

		$query = $this->db->get('tour_dates');
		$query_result = $query->result();
		return $query_result;
	}



	function get_by_id($id)
	{
		$query = $this->db->where('date_id', $id);
		$query = $this->db->get('tour_dates');
		$query_result = $query->row();
		return $query_result;
	}


	function add($tour_id)
	{
		$date = $this->input->post('date');
		$name = $this->input->post('name');
		$cost = $this->input->post('cost');

		$data = array(

			"date"=> $date, 
			"name"=> $name,
			"cost"=> $cost,
			"tour_id"=> $tour_id,
		);


		$this->db->insert('tour_dates',$data);  
	}


	function edit($tour_id,  $date_id)
	{

		$date = $this->input->post('date');
		$name = $this->input->post('name');
		$cost = $this->input->post('cost');

		$data = array(

			"date"=> $date, 
			"name"=> $name,
			"cost"=> $cost,
			"tour_id"=> $tour_id,
		);

		$this->db->where('date_id', $date_id);
		$this->db->update('tour_dates', $data);
	}


	function delete($id)
	{
		$this -> db -> where('date_id', $id);
		$this -> db -> delete('tour_dates');
	}

	
	public function countRow()
	{
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM tour_dates");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
