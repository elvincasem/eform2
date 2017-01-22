<?php


class Projects_model extends CI_Model
{
	
	public function get()
	{
		$result = $this->db->get('project');
		
		return $result->result_array();
	}
	
	public function getprojectdetails($projectid)
	{

			$result = $this->db->query("SELECT * FROM project WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}

	
	public function getprojectincompletes($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_incompletes WHERE projectid='$projectid'");
			return $result->result_array();
			
		
	}
	
	public function getprojectincompletesq($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_incompletes_q WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
		public function getprojectassembly($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_assembly WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	public function getprojectregular($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_regular WHERE projectid='$projectid'");
			return $result->result_array();
			
		
	}
	public function getprojectservices($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_services WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	public function getprojectdesign($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_design WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	public function getqualityassurance($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_qualityassurance WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	public function getpackaging($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_packaging WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	public function getnotes($projectid)
	{

			$result = $this->db->query("SELECT * FROM project_notes WHERE projectid='$projectid'");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	
	
	
	
	
	
	
	
	
	public function getcontacts($icode)
	{
			/*
			$this->db->select('*');
			$this->db->from('b_program');
			$this->db->where('instcode',$icode);
			$progs = $this->db->get(); */
			$contacts = $this->db->query("SELECT * FROM contacts WHERE instcode='$icode'");
			return $contacts->result_array();
		
	}
	public function getprograms($icode)
	{
			/*
			$this->db->select('*');
			$this->db->from('b_program');
			$this->db->where('instcode',$icode);
			$progs = $this->db->get(); */
			$progs = $this->db->query("SELECT programlevel,programid, mainprogram,supervisor,major,pstatuscode,authcat,authserial,authyear,discipline,discipline2,(newstudm+oldstudm+secondm+thirdm+fourthm+fifthm+sixthm+seventhm) AS totalmale,(newstudf+oldstudf+secondf+thirdf+fourthf+fifthf+sixthf+seventhf) AS totalfemale FROM b_program where instcode='$icode'");
			return $progs->result_array();
		
	}
	public function getdeans($icode)
	{
			/*
			$this->db->select('*');
			$this->db->from('b_program');
			$this->db->where('instcode',$icode);
			$progs = $this->db->get(); */
			$deans = $this->db->query("SELECT * FROM a_deans where instcode='$icode'");
			return $deans->result_array();
		
	}
	
	public function getformernames($icode)
	{
			/*
			$this->db->select('*');
			$this->db->from('b_program');
			$this->db->where('instcode',$icode);
			$progs = $this->db->get(); */
			$formernames = $this->db->query("SELECT * FROM a_formernames where instcode='$icode'");
			return $formernames->result_array();
		
	}

	public function insert()
	{
		
	}
	
	public function update()
	{
		
	}
	
	public function delete()
	{
		
	}
}

?>