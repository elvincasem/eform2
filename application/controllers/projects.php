<?php

class Projects extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('projects_model');
		//$this->load->model('permitsrecognition_model');
		 $this->data = array(
            'title' => 'Projects',
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
		//$scripts = array('<script>App.sidebar("toggle-sidebar");this.blur();</script>');
        //$data['scripts'] = $scripts;
		$data['page'] = "index";
		$data['details'] =array('instname'=>"Projects Details") ;
		$data['project_details'] = $this->projects_model->getprojectdetails($projectid);
		$data['project_incompletes'] = $this->projects_model->getprojectincompletes($projectid);
		$project_incompletes_q = $this->projects_model->getprojectincompletesq($projectid);
		$project_assembly = $this->projects_model->getprojectassembly($projectid);
		$data['project_regular'] = $this->projects_model->getprojectregular($projectid);
		//print_r($project_incompletes_q['authshipment']);
		
		
		
		if($project_incompletes_q['authshipment']=='YES'){
			$data['authshipyes'] = "checked=checked";
			$data['authshipno'] = "";
		}else{
			$data['authshipyes'] = "";
			$data['authshipno'] = "checked=checked";
		}
		$data['authsolution'] = $project_incompletes_q['authsolution'];
		$data['authdate'] = $project_incompletes_q['authdate'];
		
		if($project_incompletes_q['hardwarebox']=='YES'){
			$data['hardwareboxyes'] = "checked=checked";
			$data['hardwareboxno'] = "";
		}else{
			$data['hardwareboxyes'] = "";
			$data['hardwareboxno'] = "checked=checked";
		}
		
		if($project_incompletes_q['authpackaged']=='YES'){
			$data['authpackagedyes'] = "checked=checked";
			$data['authpackagedno'] = "";
		}else{
			$data['authpackagedyes'] = "";
			$data['authpackagedno'] = "checked=checked";
		}
		
		if($project_incompletes_q['pmsee']=='YES'){
			$data['pmseeyes'] = "checked=checked";
			$data['pmseeno'] = "";
		}else{
			$data['pmseeyes'] = "";
			$data['pmseeno'] = "checked=checked";
		}
		$data['pmsolution'] = $project_incompletes_q['pmsolution'];
		$data['pmdate'] = $project_incompletes_q['pmdate'];
		
		if($project_incompletes_q['pmexception']=='YES'){
			$data['pmexceptionyes'] = "checked=checked";
			$data['pmexceptionno'] = "";
		}else{
			$data['pmexceptionyes'] = "";
			$data['pmexceptionno'] = "checked=checked";
		}
		$data['pmexsolution'] = $project_incompletes_q['pmexsolution'];
		$data['pmexdate'] = $project_incompletes_q['pmexdate'];
		//project assembly
		$data['faintegration'] = $project_assembly['faintegration'];
		$data['assemblynotes'] = $project_assembly['assemblynotes'];
		if($project_assembly['q101']=='YES'){
			$data['q101yes'] = "checked=checked";
			$data['q101no'] = "";
			$data['q101na'] = "";
		}if($project_assembly['q101']=='NO'){
			$data['q101yes'] = "";
			$data['q101no'] = "checked=checked";
			$data['q101na'] = "";
		}if($project_assembly['q101']=='NA'){
			$data['q101yes'] = "";
			$data['q101no'] = "";
			$data['q101na'] = "checked=checked";
		}
		if($project_assembly['q102']=='YES'){
			$data['q102yes'] = "checked=checked";
			$data['q102no'] = "";
			$data['q102na'] = "";
		}if($project_assembly['q102']=='NO'){
			$data['q102yes'] = "";
			$data['q102no'] = "checked=checked";
			$data['q102na'] = "";
		}if($project_assembly['q102']=='NA'){
			$data['q102yes'] = "";
			$data['q102no'] = "";
			$data['q102na'] = "checked=checked";
		}
		if($project_assembly['q103']=='YES'){
			$data['q103yes'] = "checked=checked";
			$data['q103no'] = "";
			$data['q103na'] = "";
		}if($project_assembly['q103']=='NO'){
			$data['q103yes'] = "";
			$data['q103no'] = "checked=checked";
			$data['q103na'] = "";
		}if($project_assembly['q103']=='NA'){
			$data['q103yes'] = "";
			$data['q103no'] = "";
			$data['q103na'] = "checked=checked";
		}
		if($project_assembly['q104']=='YES'){
			$data['q104yes'] = "checked=checked";
			$data['q104no'] = "";
			$data['q104na'] = "";
		}if($project_assembly['q104']=='NO'){
			$data['q104yes'] = "";
			$data['q104no'] = "checked=checked";
			$data['q104na'] = "";
		}if($project_assembly['q104']=='NA'){
			$data['q104yes'] = "";
			$data['q104no'] = "";
			$data['q104na'] = "checked=checked";
		}
		if($project_assembly['q105']=='YES'){
			$data['q105yes'] = "checked=checked";
			$data['q105no'] = "";
			$data['q105na'] = "";
		}if($project_assembly['q105']=='NO'){
			$data['q105yes'] = "";
			$data['q105no'] = "checked=checked";
			$data['q105na'] = "";
		}if($project_assembly['q105']=='NA'){
			$data['q105yes'] = "";
			$data['q105no'] = "";
			$data['q105na'] = "checked=checked";
		}
		if($project_assembly['q106']=='YES'){
			$data['q106yes'] = "checked=checked";
			$data['q106no'] = "";
			$data['q106na'] = "";
		}if($project_assembly['q106']=='NO'){
			$data['q106yes'] = "";
			$data['q106no'] = "checked=checked";
			$data['q106na'] = "";
		}if($project_assembly['q106']=='NA'){
			$data['q106yes'] = "";
			$data['q106no'] = "";
			$data['q106na'] = "checked=checked";
		}
		if($project_assembly['q107']=='YES'){
			$data['q107yes'] = "checked=checked";
			$data['q107no'] = "";
			$data['q107na'] = "";
		}if($project_assembly['q107']=='NO'){
			$data['q107yes'] = "";
			$data['q107no'] = "checked=checked";
			$data['q107na'] = "";
		}if($project_assembly['q107']=='NA'){
			$data['q107yes'] = "";
			$data['q107no'] = "";
			$data['q107na'] = "checked=checked";
		}
		if($project_assembly['q108']=='YES'){
			$data['q108yes'] = "checked=checked";
			$data['q108no'] = "";
			$data['q108na'] = "";
		}if($project_assembly['q108']=='NO'){
			$data['q108yes'] = "";
			$data['q108no'] = "checked=checked";
			$data['q108na'] = "";
		}if($project_assembly['q108']=='NA'){
			$data['q108yes'] = "";
			$data['q108no'] = "";
			$data['q108na'] = "checked=checked";
		}
		if($project_assembly['q109']=='YES'){
			$data['q109yes'] = "checked=checked";
			$data['q109no'] = "";
			$data['q109na'] = "";
		}if($project_assembly['q109']=='NO'){
			$data['q109yes'] = "";
			$data['q109no'] = "checked=checked";
			$data['q109na'] = "";
		}if($project_assembly['q109']=='NA'){
			$data['q109yes'] = "";
			$data['q109no'] = "";
			$data['q109na'] = "checked=checked";
		}
		if($project_assembly['q110']=='YES'){
			$data['q110yes'] = "checked=checked";
			$data['q110no'] = "";
			$data['q110na'] = "";
		}if($project_assembly['q110']=='NO'){
			$data['q110yes'] = "";
			$data['q110no'] = "checked=checked";
			$data['q110na'] = "";
		}if($project_assembly['q110']=='NA'){
			$data['q110yes'] = "";
			$data['q110no'] = "";
			$data['q110na'] = "checked=checked";
		}
		if($project_assembly['q112']=='YES'){
			$data['q112yes'] = "checked=checked";
			$data['q112no'] = "";
			$data['q112na'] = "";
		}if($project_assembly['q112']=='NO'){
			$data['q112yes'] = "";
			$data['q112no'] = "checked=checked";
			$data['q112na'] = "";
		}if($project_assembly['q112']=='NA'){
			$data['q112yes'] = "";
			$data['q112no'] = "";
			$data['q112na'] = "checked=checked";
		}
		if($project_assembly['q113']=='YES'){
			$data['q113yes'] = "checked=checked";
			$data['q113no'] = "";
			$data['q113na'] = "";
		}if($project_assembly['q113']=='NO'){
			$data['q113yes'] = "";
			$data['q113no'] = "checked=checked";
			$data['q113na'] = "";
		}if($project_assembly['q113']=='NA'){
			$data['q113yes'] = "";
			$data['q113no'] = "";
			$data['q113na'] = "checked=checked";
		}
		
		$data['positionnos'] = $project_assembly['positionnos'];
		
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