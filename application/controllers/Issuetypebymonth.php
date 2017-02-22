<?php

class Issuetypebymonth extends CI_Controller
{
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('report_model');
		  $this->data = array(
            'title' => 'Report',
			'projectclass' => '',
			'usersclass' => '',
			'userssubclass' => '',
			'reportsclass' => 'active',
			'reports_issuetypeclass' => '',
			'reports_grouprootclass' => '',
			'reports_missingitemsclass' => 'active',
			'reports_designissueclass' => ''
			
			);
			
			
	}
	
	public function index()
	{
		
		$data = $this->data;
		$this->load->view('inc/header_view');
		$data['yeardata'] = $this->report_model->getyeardata();
		$this->load->view('reports/issuetypebymonth_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	public function report($rp_issuetype,$year)
	{
		
		$data = $this->data;
		//$data['datefrom'] = $from;
		$data['yeardata'] = $this->report_model->getyeardata();
		$data['year'] = $year;
		$data['rp_issuetype'] = urldecode($rp_issuetype);
		$data['issuetypebymonth_report'] = $this->report_model->Issuetypebymonthreport(urldecode($rp_issuetype),$year);
		$data['issuetypebymonth_report_charts'] = json_encode($this->report_model->issuetypebymonthreport_charts(urldecode($rp_issuetype),$year));
		
		$this->load->view('inc/header_view');

		$this->load->view('reports/issuetypebymonth_report_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

}