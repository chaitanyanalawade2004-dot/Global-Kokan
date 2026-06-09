<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Booking_report extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->database(); // Load DB if not autoloaded
    }
    
    public function index()
{
    // Get filter inputs
    $cat_id = $this->input->get('cat_id');
    $tour_id = $this->input->get('tour_id');
    $from_date = $this->input->get('from_date');
    $to_date = $this->input->get('to_date');
    $no_of_person = $this->input->get('no_of_person'); // NEW

    // Load categories and tours for filter dropdowns
    $data['categories'] = $this->db->get('tour_category')->result();
    $data['tours'] = $this->db->get('tour')->result();

    // Build booking query with filters
    $this->db->select('cb.*, t.tour_name, tc.cat_name');
    $this->db->from('customer_booking cb');
    $this->db->join('tour t', 'cb.tour_id = t.tour_id', 'left');
    $this->db->join('tour_category tc', 't.cat_id = tc.cat_id', 'left');

    if (!empty($cat_id)) {
        $this->db->where('t.cat_id', $cat_id);
    }

    if (!empty($tour_id)) {
        $this->db->where('cb.tour_id', $tour_id);
    }

    if (!empty($from_date)) {
        $this->db->where('cb.date >=', $from_date);
    }

    if (!empty($to_date)) {
        $this->db->where('cb.date <=', $to_date);
    }

    if (!empty($no_of_person)) {
        $this->db->where('cb.no_of_person', $no_of_person);
    }

    $data['result'] = $this->db->get()->result();

    // Load views
    $this->load->view('admin/header');
    $this->load->view('admin/booking_report', $data);
    $this->load->view('admin/footer');
}

}
