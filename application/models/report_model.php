<?php


class Report_model extends CI_Model
{
	
	public function get()
	{
		$result = $this->db->get('project');
		
		return $result->result_array();
	}
	
	public function issuetypereport($from,$to)
	{

			$result = $this->db->query("SELECT rp_issuetype,SUM(rp_qty) AS totalissue FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' GROUP BY rp_issuetype order by totalissue desc");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function issuetypereport_charts($from,$to)
	{

			$result = $this->db->query("SELECT SUM(rp_qty) AS value, rp_issuetype AS label FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' GROUP BY rp_issuetype");
			$resultarray = $result->result_array();
			
			return $resultarray;
		
	}

	public function grouprootcausereport($from,$to)
	{

			$result = $this->db->query("SELECT rp_cause,sum(rp_qty) AS totalcause FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' GROUP BY rp_cause order by totalcause desc");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function grouprootcause_charts($from,$to)
	{

			$result = $this->db->query("SELECT SUM(rp_qty) AS value, rp_cause AS label FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' GROUP BY rp_cause");
			$resultarray = $result->result_array();
			
			return $resultarray;
		
	}
	public function issuetypebymonthreport($rp_issuetype,$year)
	{

			$result = $this->db->query("SELECT MONTHNAME(rp_date) AS calendarmonth, SUM(rp_qty) AS totalissue FROM project_regular WHERE YEAR(rp_date) = '$year' AND rp_issuetype='$rp_issuetype' GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function issuetypebymonthreport_charts($rp_issuetype,$year)
	{

			$result = $this->db->query("SELECT SUM(rp_qty) AS value, MONTHNAME(rp_date) AS label FROM project_regular WHERE YEAR(rp_date) = '$year' AND rp_issuetype='$rp_issuetype' GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			
			return $resultarray;
		
	}

	public function getyeardata()
	{
			$result = $this->db->query("SELECT YEAR(rp_date) AS exceptionyear FROM project_regular GROUP BY exceptionyear");
			$resultarray = $result->result_array();
			return $resultarray;
	}
	
	public function designissuereport($year)
	{

			$result = $this->db->query("SELECT MONTHNAME(rp_date) AS calendarmonth, SUM(rp_qty) AS totalissue FROM project_regular WHERE YEAR(rp_date) = '$year' AND rp_issuetype='Design Issue' GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function designissue_charts($year)
	{

			$result = $this->db->query("SELECT SUM(rp_qty) AS value, MONTHNAME(rp_date) AS label FROM project_regular WHERE YEAR(rp_date) = '$year' AND rp_issuetype='Design Issue' GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			
			return $resultarray;
		
	}
	public function custom_report($from,$to,$rp_issuetype,$level0,$level1,$level2)
	{

		$addedcondition ="";
		if($level0!="NONE"){
			$level0sql = " AND rp_level0='$level0'";
			$addedcondition.=$level0sql;
		}
		if($level1!="NONE"){
			$level1sql = " AND rp_level1='$level0'";
			$addedcondition.=$level1sql;
		}
		if($level2!="NONE"){
			$level2sql = " AND rp_level2='$level0'";
			$addedcondition.=$level2sql;
		}
		
		
		
			$result = $this->db->query("SELECT MONTHNAME(rp_date) AS calendarmonth, SUM(rp_qty) AS totalissue FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' and rp_issuetype='$rp_issuetype' $addedcondition GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function custom_report_charts($from,$to,$rp_issuetype,$level0,$level1,$level2)
	{

		$addedcondition ="";
		if($level0!="NONE"){
			$level0sql = " AND rp_level0='$level0'";
			$addedcondition.=$level0sql;
		}
		if($level1!="NONE"){
			$level1sql = " AND rp_level1='$level0'";
			$addedcondition.=$level1sql;
		}
		if($level2!="NONE"){
			$level2sql = " AND rp_level2='$level0'";
			$addedcondition.=$level2sql;
		}
		
		
		
			$result = $this->db->query("SELECT SUM(rp_qty) AS value, MONTHNAME(rp_date) AS label FROM project_regular WHERE rp_date BETWEEN '$from' AND '$to' and rp_issuetype='$rp_issuetype' $addedcondition GROUP BY MONTH(rp_date)");
			$resultarray = $result->result_array();
			return $resultarray;
		
	}
	
	public function getlevel0()
	{
			$result = $this->db->query("SELECT DISTINCT(rp_level0) FROM project_regular");
			$resultarray = $result->result_array();
			return $resultarray;
	}
	public function getlevel1()
	{
			$result = $this->db->query("SELECT DISTINCT(rp_level1) FROM project_regular");
			$resultarray = $result->result_array();
			return $resultarray;
	}
	public function getlevel2()
	{
			$result = $this->db->query("SELECT DISTINCT(rp_level2) FROM project_regular");
			$resultarray = $result->result_array();
			return $resultarray;
	}

}

?>