<?php

class Home extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('dashboard_model');
		  $this->data = array(
            'title' => 'Projects List',
			'projectclass' => '',
			'usersclass' => '',
			'userssubclass' => '',
			'reportsclass' => '',
			'reports_issuetypeclass' => '',
			'reports_grouprootclass' => '',
			'reports_missingitemsclass' => '',
			'reports_designissueclass' => ''
			
			);
	}
	
	public function index()
	{
		/*$this->load->helper('url');
		$data['title'] = "Welcome";
		$data['heiclass'] = "";
		$data['heilist'] = "";
		$data['programlist'] = "";
		$data['deanslist'] = "";
		$data['contacts'] = "";
		$data['accounts'] = "";
		$data['programapplication'] = "";
		$data['permits'] = "";*/
		$data = $this->data;
		$data['totalprojects'] = $this->dashboard_model->gettotalprojects();
		$data['totalissuecount'] = $this->dashboard_model->gettotalissuecount();
		$data['groupresponsible'] = $this->dashboard_model->gettotalresponsible();
		
		$this->load->view('inc/header_view');
		

		$this->load->view('home/home_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

	
	
}