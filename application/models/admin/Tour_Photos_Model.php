<?php
class Tour_Photos_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function lists()
	{		

		$query = $this->db->get('tour_photos');
		$query_result = $query->result();
		return $query_result;
	}



	function get_by_id($id)
	{
		$query = $this->db->where('photos_id', $id);
		$query = $this->db->get('tour_photos');
		$query_result = $query->row();
		return $query_result;
	}


	function add($tour_id)
	{
		$photo_name = $this->input->post('photo_name');
		
		if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
		{
			$file =  $_FILES['filename']['name'];
			$target_dir = '././assets/upload/tour_photos/'.$file ;
			if (file_exists($target_dir)) 
			{
				unlink($target_dir);
			}
			$target_dir = 'assets/upload/tour_photos/'.$file ;
			move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 
		}
		else
		{

			$target_dir = 'assets/upload/sample.jpg' ;
		}		

		$data = array(

			"photo_name"=> $photo_name, 
			"tour_id"=> $tour_id, 
			"filename"=> $target_dir,
			
		);


		$this->db->insert('tour_photos',$data);  
	}



	function edit($id)
	{

		$photos_name = $this->input->post('photos_name');
		$filename = $this->input->post('filename');
		

		$data = array(

			"photos_name"=> $photos_name, 
			"filename"=> $filename,
		);

		$this->db->where('photos_id', $id);
		$this->db->update('tour_photos', $data);
	}




	function delete($id)
	{
		$this -> db -> where('photos_id', $id);
		$this -> db -> delete('tour_photos');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM tour");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>
