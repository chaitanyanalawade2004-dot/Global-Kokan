<?php
class GalleryModel extends CI_Model
{
    // Function To Fetch All Contacts Record

    function lists()
    {       

        $query = $this->db->get('gallery');
        $query_result = $query->result();
        return $query_result;
    }

    function get_by_id($id)
    {
        $query = $this->db->where('gallery_id', $id);
        $query = $this->db->get('gallery');
        $query_result = $query->row();
        return $query_result;
    }

    
    function add()
    {
        $title = $this->input->post('title');
        


        if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
        {
            $file =  $_FILES['filename']['name'];
            $target_dir = '././assets/upload/gallery/'.$file ;
            if (file_exists($target_dir)) 
            {
                unlink($target_dir);
            }
            $target_dir = 'assets/upload/gallery/'.$file ;
            move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 
        }

        else
        {

            $target_dir = 'assets/upload/sample.jpg' ;
        }
        

        $data = array(

            "title"=> $title, 
            
            "filename"=> $target_dir,
            
            
        );

        // echo "<pre>";
        // print_r($data);

        $this->db->insert('gallery',$data); 
        $id = $this->db->insert_id();

        

    }

    function edit($id)
    {

        $title = $this->input->post('title');
        
       


        $urltitle = preg_replace("/[^a-zA-Z0-9]/", "-", $title);
        

        if (isset($_FILES['filename']) && is_uploaded_file($_FILES['filename']['tmp_name'])) 
        {
            $file =  $_FILES['filename']['name'];
            $target_dir = '././assets/upload/gallery/'.$file ;
            if (file_exists($target_dir)) 
            {
                unlink($target_dir);
            }

            $target_dir = 'assets/upload/gallery/'.$file ;
            move_uploaded_file($_FILES['filename']['tmp_name'], $target_dir); 


            $data = array(

                "title"=> $title, 
                
                
                "filename" =>  $target_dir,
            );

        }
        else
        {

            $data = array(

                "title"=> $title, 
                
                
            );

        }


        $this->db->where('gallery_id', $id);
        $this->db->update('gallery', $data);


    }




    function delete($id)
    {
        $this -> db -> where('gallery_id', $id);
        $this -> db -> delete('gallery');
    }

    
    public function countRow(){
        $query = $this->db->query("SELECT *,count(id) AS num_of_time FROM gallery");
    // print_r($query->result());
        return $query->result();
    }
    

}
?>
