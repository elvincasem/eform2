<?php

class Projects extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('projects_model');
		//$this->load->model('permitsrecognition_model');
		 $this->data = array(
            'title' => 'Projects List',
			'projectclass' => 'active'
			
			);
	}
	
	public function index()
	{
		$data = $this->data;
		$data['page'] = "index";
		$data['details'] =array('instname'=>"Projects List") ;
		$data['projectlist'] = $this->projects_model->get();
		//print_r($data['details']);
		
		
		
		$this->load->view('inc/header_view');
		$this->load->view('projects/projects_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	
	public function details($projectid){
		$data = $this->data;
		$data['page'] = "index";
		$data['details'] =array('instname'=>"Projects List") ;
		$data['project_details'] = $this->projects_model->getprojectdetails($projectid);
		$data['project_incompletes'] = $this->projects_model->getprojectincompletes($projectid);
		$data['project_incompletes_q'] = $this->projects_model->getprojectincompletesq($projectid);
		$data['project_assembly'] = $this->projects_model->getprojectassembly($projectid);
		//print_r($data['details']);
		
		
		
		$this->load->view('inc/header_view');
		$this->load->view('projects/projectdetails_view',$data);
		$this->load->view('inc/footer_view');
		
		/*
		$data = $this->data;
		$data['page'] = "institution";
		$data['details'] = $this->heidirectory_model->getinstname($instcode)->row();
		
		//if($data['details']->result=='0'){
			//echo 'none';
		//}else{
			$data['contacts_list'] = $this->heidirectory_model->getcontacts($instcode);
			$data['programs'] = $this->heidirectory_model->getprograms($instcode);
			$data['deans'] = $this->heidirectory_model->getdeans($instcode);
			$data['formernames'] = $this->heidirectory_model->getformernames($instcode);
			
			$data['permits_list'] = $this->permitsrecognition_model->getspecific($instcode);
			
			
			$data['institutioncode'] = $instcode;
			//$data['subnavtitle'] = $data['instname'];
			//$data['heidirectory'] = $result->result();
			
			$this->load->view('inc/header_view');
			$this->load->view('heidirectory/heidirectorydetails_view',$data);
			$this->load->view('heidirectory/mapheader_view');
			$this->load->view('inc/footer_view');
			//print_r($data);
		//}*/
		
	}
	

	
	
}