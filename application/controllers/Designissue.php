<?php

class Designissue extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('report_model');
		  $this->data = array(
            'title' => 'Projects List',
			'projectclass' => '',
			'usersclass' => '',
			'userssubclass' => '',
			'reportsclass' => 'active',
			'reports_issuetypeclass' => '',
			'reports_grouprootclass' => '',
			'reports_missingitemsclass' => '',
			'reports_designissueclass' => 'active'
			
			);
			
			
	}
	
	public function index()
	{
		
		$data = $this->data;
		$this->load->view('inc/header_view');
		$data['yeardata'] = $this->report_model->getyeardata();
		$this->load->view('reports/designissue_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	public function report($year)
	{
		
		$data = $this->data;
		//$data['datefrom'] = $from;
		$data['yeardata'] = $this->report_model->getyeardata();
		$data['year'] = $year;
		
		$data['designissue_report'] = $this->report_model->designissuereport($year);
		$data['designissue_report_charts'] = json_encode($this->report_model->designissue_charts($year));
		

		$this->load->view('inc/header_view');

		$this->load->view('reports/designissue_report_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

}