<?php
class Tour_Model extends CI_Model
{
	// Function To Fetch All Contacts Record

	function lists()
	{		

		$query = "SELECT *, (SELECT cat_name FROM tour_category WHERE tour.cat_id = tour_category.cat_id) as cat_name FROM tour ORDER BY srno";
		$result = $this->db->query($query);
		return $result->result();
	}



	function get_by_id($id)
	{
		$query = $this->db->where('tour_id', $id);
		$query = $this->db->get('tour');
		$query_result = $query->row();
		return $query_result;
	}

	function get_by_urltitle($urltitle)
	{
		$query = $this->db->where('urltitle', $urltitle);
		$query = $this->db->get('tour');
		$query_result = $query->row();
		return $query_result;
	}


	function add()
	{
		$tour_name = $this->input->post('tour_name');
		$short_description = $this->input->post('short_description');
		$cat_id = $this->input->post('cat_id');
		$tour_details = $this->input->post('tour_details');
		$price_includes = $this->input->post('price_includes');
		$price_excludes = $this->input->post('price_excludes');
		$note = $this->input->post('note');
		$srno = $this->input->post('srno');

		$urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $tour_name);
		$urltitle = preg_replace('!\-+!', '-', $urltitle);

		if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
		{
			$file =  $_FILES['filename']['name'];
			$target_dir = '././assets/upload/tour/'.$file ;
			if (file_exists($target_dir)) 
			{
				unlink($target_dir);
			}
			$target_dir = 'assets/upload/tour/'.$file ;
			move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 
		}

		else
		{

			$target_dir = 'assets/upload/sample.jpg' ;
		}
		

		$data = array(

			"tour_name"=> $tour_name, 
			"short_description"=> $short_description, 
			"cat_id"=> $cat_id, 
			"tour_details"=> $tour_details,
			"price_includes"=> $price_includes,
			"price_excludes"=> $price_excludes,
			"note"=> $note,
			"filename"=> $target_dir,
			"urltitle"=> $urltitle,
			"srno"=> $srno, 
			
		);

		// echo "<pre>";
		// print_r($data);

		$this->db->insert('tour',$data); 
		$id = $this->db->insert_id();

		

	}

	function edit($id)
	{

		$tour_name = $this->input->post('tour_name');
		$short_description = $this->input->post('short_description');
		$tour_details = $this->input->post('tour_details');
		$cat_id = $this->input->post('cat_id');
		$price_includes = $this->input->post('price_includes');
		$price_excludes = $this->input->post('price_excludes');
		$note = $this->input->post('note');
		$srno = $this->input->post('srno');
		

		$urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $tour_name);
		$urltitle = preg_replace('!\-+!', '-', $urltitle);

		if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
		{
			$file =  $_FILES['filename']['name'];
			$target_dir = '././assets/upload/tour/'.$file ;
			if (file_exists($target_dir)) 
			{
				unlink($target_dir);
			}

			$target_dir = 'assets/upload/tour/'.$file ;
			move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 


			$data = array(

				"tour_name"=> $tour_name,
				"short_description"=> $short_description,  
				"tour_details"=> $tour_details,
				"cat_id"=> $cat_id,
				"price_includes"=> $price_includes,
				"price_excludes"=> $price_excludes,
				"note"=> $note,
				"urltitle"=> $urltitle,
				"filename" =>  $target_dir,
				"srno"=> $srno, 
			);

		}
		else
		{

			$data = array(

				"tour_name"=> $tour_name, 
				"short_description"=> $short_description,  
				"tour_details"=> $tour_details,
				"cat_id"=> $cat_id,
				"price_includes"=> $price_includes,
				"price_excludes"=> $price_excludes,
				"note"=> $note,
				"urltitle"=> $urltitle,
				"srno"=> $srno, 
				
			);

		}
		$this->db->where('tour_id', $id);
		$this->db->update('tour', $data);


	}




	function delete($id)
	{
		$this -> db -> where('tour_id', $id);
		$this -> db -> delete('tour');
	}

	
	public function countRow(){
		$query = $this->db->query("SELECT *,count(id) AS num_of_time FROM tour");
    // print_r($query->result());
		return $query->result();
	}
	

}
?>