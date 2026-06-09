<?php
class Review_Model extends CI_Model
{
    // Function To Fetch All Contacts Record

    function lists()
    {       

        $query = $this->db->get('review');
        $query_result = $query->result();
        return $query_result;
    }

    function get_by_id($id)
    {
        $query = $this->db->where('review_id', $id);
        $query = $this->db->get('review');
        $query_result = $query->row();
        return $query_result;
    }

    
    function add()
    {
        $name = $this->input->post('name');
        $position = $this->input->post('position');
        $message = $this->input->post('message');

        if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
        {
            $file =  $_FILES['filename']['name'];
            $target_dir = '././assets/upload/review/'.$file ;
            if (file_exists($target_dir)) 
            {
                unlink($target_dir);
            }
            $target_dir = 'assets/upload/review/'.$file ;
            move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 
        }

        else
        {

            $target_dir = 'assets/upload/sample.jpg' ;
        }
        

        $data = array(

            "name"=> $name,
            "position"=> $position,
            "message"=> $message, 
            "filename"=> $target_dir,
            
            
        );

        // echo "<pre>";
        // print_r($data);

        $this->db->insert('review',$data); 
        $id = $this->db->insert_id();

        

    }

    function edit($id)
    {

        $name = $this->input->post('name');
          $position = $this->input->post('position');  
           $message = $this->input->post('message');

        $urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $name);
        

        if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
        {
            $file =  $_FILES['filename']['name'];
            $target_dir = '././assets/upload/review/'.$file ;
            if (file_exists($target_dir)) 
            {
                unlink($target_dir);
            }

            $target_dir = 'assets/upload/review/'.$file ;
            move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 


            $data = array(

                "name"=> $name, 
                 "position"=> $position,
                   "message"=> $message, 
                "filename" =>  $target_dir,
            );

        }
        else
        {

            $data = array(

                "name"=> $name, 
                 "position"=> $position,
            "message"=> $message, 
                
            );

        }
        $this->db->where('review_id', $id);
        $this->db->update('review', $data);


    }




    function delete($id)
    {
        $this -> db -> where('review_id', $id);
        $this -> db -> delete('review');
    }

    
    public function countRow(){
        $query = $this->db->query("SELECT *,count(id) AS num_of_time FROM review");
    // print_r($query->result());
        return $query->result();
    }
    

}
?>
