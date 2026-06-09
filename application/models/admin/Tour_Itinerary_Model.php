<?php
class Tour_Itinerary_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function lists()
	{		

		$query = $this->db->get('tour_itinerary');
		$query_result = $query->result();
		return $query_result;
	}



	function get_by_id($id)
	{
		$query = $this->db->where('iti_id', $id);
		$query = $this->db->get('tour_itinerary');
		$query_result = $query->row();
		return $query_result;
	}


	function add($tour_id)
	{
		$day = $this->input->post('day');
		$day_details = $this->input->post('day_details');
		

		$data = array(

			"day"=> $day, 
			"day_details"=> $day_details,
			"tour_id"=> $tour_id,
			
		);

		// echo "<pre>";
		// print_r($data);

		$this->db->insert('tour_itinerary',$data);  
	}

	function edit($tour_id,  $iti_id)
	{

		$day = $this->input->post('day');
		$day_details = $this->input->post('day_details');

		$data = array(

			"day"=> $day, 
			"day_details"=> $day_details,
			"tour_id"=> $tour_id,
		);


		$this->db->where('iti_id', $iti_id);
		$this->db->update('tour_itinerary', $data);
	}




	function delete($id)
	{
		$this -> db -> where('iti_id', $id);
		$this -> db -> delete('tour_itinerary');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM tour_itinerary");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
