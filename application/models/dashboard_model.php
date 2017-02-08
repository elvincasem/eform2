<?php


class Dashboard_model extends CI_Model
{
	
	
	public function gettotalprojects()
	{

			$result = $this->db->query("SELECT count(*) as totalproj FROM project");
			$resultarray = $result->result_array();
			return $resultarray[0];
		
	}
	
	public function gettotalissuecount()
	{

			$result = $this->db->query("SELECT rp_issuetype,SUM(rp_qty) AS noofqty FROM project_regular GROUP BY rp_issuetype ORDER BY noofqty desc");
			return $result->result_array();
			
		
	}
	
	public function gettotalresponsible()
	{

			$result = $this->db->query("SELECT rp_cause,COUNT(*) AS totalgroupcount FROM project_regular GROUP BY rp_cause ORDER BY totalgroupcount desc");
			return $result->result_array();
			
		
	}
	
	
	
}

?>