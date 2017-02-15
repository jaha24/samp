<?php
/**
 * Dropinn Common_model Class
 *
 * helps to achieve common tasks related to the site like flash message formats,pagination variables.
 *
 * @package	Dropinn
 * @subpackage	Models
 * @category	Common_model 
 * @author		Cogzidel Product Team
 * @version		Version 1.6
 * @link		http://www.cogzidel.com

 */ 
	 class Common_model extends CI_Model {
	 
		/**
			* Constructor 
			*
			*/
	  function Common_model() 
	  {
			parent::__construct();
	
		 // load model
	  //$this->load->model('page_model');

   }//Controller End
	  

	 function getTableData($table='', $conditions=array(), $fields='', $like=array(), $limit=array(), $orderby = array(), $like1=array(), $order = array(), $conditions1=array())
	 {
	 	//Check For Conditions
	 	if(is_array($conditions) and count($conditions)>0)		
	 		$this->db->where($conditions);
		
		//Check For Conditions
	 	if(is_array($conditions1) and count($conditions1)>0)		
	 		$this->db->or_where($conditions1);	
			
		//Check For like statement
	 	if(is_array($like) and count($like)>0)		
	 		$this->db->like($like);	
		
		if(is_array($like1) and count($like1)>0)

			$this->db->or_like($like1);	
			
		//Check For Limit	
		if(is_array($limit))		
		{
			if(count($limit)==1)
	 			$this->db->limit($limit[0]);
			else if(count($limit)==2)
				$this->db->limit($limit[0],$limit[1]);
		}	
		
		
		//Check for Order by
		//if(is_array($orderby) and count($orderby)>0)
		//	$this->db->order_by('id', 'desc');
			
		//Check for Order by
		if(is_array($order) and count($order)>0)
			$this->db->order_by($order[0], $order[1]);	
			
		$this->db->from($table);
		
		//Check For Fields	 
		if($fields!='')
		 
				$this->db->select($fields);
		
		else 		
	 		$this->db->select();
		
		if($fields == 'user_id')
		{
			$this->db->distinct();
		}
			
		$result = $this->db->get();
		
	//pr($result->result());
		return $result;
		
	 }	 
 
// ID verification end
   						
}


// End Common_model Class
   
/* End of file Common_model.php */ 
/* Location: ./app/models/Common_model.php */
?>
