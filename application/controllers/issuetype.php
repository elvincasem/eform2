<?php

class Issuetype extends CI_Controller
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
			'reports_issuetypeclass' => 'active',
			'reports_grouprootclass' => '',
			'reports_missingitemsclass' => '',
			'reports_designissueclass' => ''
			);
			
			
	}
	
	public function index()
	{
		
		$data = $this->data;
		$this->load->view('inc/header_view');

		$this->load->view('reports/issuetype_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	public function report($from,$to)
	{
		
		$data = $this->data;
		$data['datefrom'] = $from;
		$data['dateto'] = $to;
		$data['issuetype_report'] = $this->report_model->issuetypereport($from,$to);
		$data['issuetype_report_charts'] = json_encode($this->report_model->issuetypereport_charts($from,$to));
		

		$this->load->view('inc/header_view');

		$this->load->view('reports/issuetype_report_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

	
	
}