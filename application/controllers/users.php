<?php

class Users extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('users_model');
		 $this->data = array(
            'title' => 'Users Directory',
			'projectclass' => '',
			'usersclass' => 'active',
			'userssubclass' => 'active',
			'reportsclass' => '',
			'reports_issuetypeclass' => ''
			);
	}
	
	public function index()
	{
		$data = $this->data;
		$data['page'] = "index";
		$data['details'] =array('instname'=>"Users Directory") ;
		$data['users_list'] = $this->users_model->get();
		
		
		
		
		$this->load->view('inc/header_view');
		$this->load->view('users/users_view',$data);
		$this->load->view('inc/footer_view');
		
	}
	
	
	
	

	
	
}