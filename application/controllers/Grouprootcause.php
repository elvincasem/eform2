<?php

class Grouprootcause extends CI_Controller
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
			'reports_grouprootclass' => 'active',
			'reports_missingitemsclass' => '',
			'reports_designissueclass' => ''
			
			);
			
			
	}
	
	public function index()
	{
		
		$data = $this->data;
		$this->load->view('inc/header_view');

		$this->load->view('reports/grouprootcause_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	public function report($from,$to)
	{
		
		$data = $this->data;
		$data['datefrom'] = $from;
		$data['dateto'] = $to;
		$data['rootcause_report'] = $this->report_model->grouprootcausereport($from,$to);
		$data['rootcause_report_charts'] = json_encode($this->report_model->grouprootcause_charts($from,$to));
		

		$this->load->view('inc/header_view');

		$this->load->view('reports/grouprootcause_report_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

	
	
}