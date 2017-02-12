<?php

class Customreport extends CI_Controller
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
			'reports_designissueclass' => ''
			
			);
			
			
	}
	
	public function index()
	{
		
		$data = $this->data;
		$this->load->view('inc/header_view');
		$data['level0'] = $this->report_model->getlevel0();
		$data['level1'] = $this->report_model->getlevel1();
		$data['level2'] = $this->report_model->getlevel2();
		$this->load->view('reports/customreport_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	public function report($from,$to,$rp_issuetype,$level0,$level1,$level2)
	{
		
		$data = $this->data;
		$data['level0'] = $this->report_model->getlevel0();
		$data['level1'] = $this->report_model->getlevel1();
		$data['level2'] = $this->report_model->getlevel2();
		$data['yeardata'] = $this->report_model->getyeardata();
		
		$data['datefrom'] = $from;
		$data['dateto'] = $to;
		$data['rp_issuetype'] = urldecode($rp_issuetype);
		$data['slevel0'] = urldecode($level0);
		$data['slevel1'] = urldecode($level1);
		$data['slevel2'] = urldecode($level2);
		
		
		$data['custom_report'] = $this->report_model->custom_report($from,$to,urldecode($rp_issuetype),urldecode($level0),urldecode($level1),urldecode($level2));
		
		$data['custom_report_charts'] = json_encode($this->report_model->custom_report_charts($from,$to,urldecode($rp_issuetype),urldecode($level0),urldecode($level1),urldecode($level2)));
		
		//print_r($data['custom_report']);
		
		$this->load->view('inc/header_view');
		$this->load->view('reports/customreport_report_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	

}