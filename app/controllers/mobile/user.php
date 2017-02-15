<?php
/**
 * DROPinn User Controller Class
 *
 * helps to achieve common tasks related to the site for mobile app like android and iphone.
 *
 * @package		new
 * @subpackage	Controllers
 * @category	User
 * @author		new
 * @version		Version 1.0
 * @link		
 
 */
 if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Controller {

	public function User()
	{
		parent::__construct();
		
		

				
				$this->load->library('DX_Auth');  
		
				$this->load->model('Users_model');
				//$this->load->library('Encryption');
			/*	$this->load->model('Post_model');
			  	$this->load->helper('url');
				$this->load->model('Gallery');
				$this->load->model('Trips_model');
				$this->load->model('Message_model');*/
	 			$this->_table = 'user';
		        $this->load->model('Common_model');
	 	
		
		
		
		
        }
public function index1()
	{
		
	}
	
public function signin()
{
		$email = $this->input->get('email');
		$password =$this->input->get('password');
		//echo $password;
		//$query = $this->db->query('SELECT * FROM user');
		//echo $query->num_rows();
		if ( ! empty($email) AND ! empty($password))
		 {
				if ($query = $this->get_login($email) AND $query->num_rows() == 1)
		 	{
					// Get user record
					$row = $query->row();

					$password = $this->_encode($password);
										 $stored_hash = $row->password;
										  //echo $this->encrypt->decode($stored_hash);
					
					if ($password == $row->password)
										{	
										 // $profile_pic = $this->Gallery->profilepic($row->id, 2);
										echo '[{"status":"Successfully logged in.","user_id":"'.$row->id.'","email":"'.$row->email.'","username":"'.$row->email.'","password":"'.$password.'","profile_pic":""}]';
												exit;
										}
										else
										{
										  echo '[{"status":"Sorry! The password is invalid"}]';exit;
										}
							
		 	    }
				else
				{
				 echo '[{"status":"Sorry! The Emailid is invalid"}]';exit;
				}
			}else{
				echo '[{"status":error"}]';
			}

		//echo "hai";	
}
public function signup()
{
	
		$data['email'] = $this->input->get('email');
		$data['username'] = $this->input->get('email');
		$data['password'] =$this->input->get('password');
		$data['password']  = $this->_encode($data['password']);
		$result = $this->db->where('email',$data['email'])->get('user');
		if($result->num_rows()==0){
			$this->db->insert('user',$data);
			$results = $this->db->where('email',$data['email'])->get('user')->row();
			echo '[{"status":"Success","user_id":"'. $results->id.'","email":"'.$data['email'].'","success":"1"}]';
			exit;
		}
		else{
			echo'[{"status":"Email already exists"}]';
			exit;
		}
		
		
}
function user_data()
{
	$user_id = $this->input->get('user_id');
	
	$condition = array('id'=>$user_id);
	//echo $condition;
	$email = $this->db->get_where('user', array('id' => $user_id))->row()->email;
	$fname = $this->db->get_where('user', array('id' => $user_id))->row()->fname;
	//echo $email,$fname;
	$condition1 = array('email'=>$email);
	
	$result_user = $this->Common_model->getTableData('user',$condition);
	
	if($result_user->num_rows() != 0 )
	{
	foreach($result_user->result() as $row)
	{
		/*
		echo "[{ \"id\":".$row->id.",\"Fname\":\"".$row->Fname."\",\"Lname\":\"".$row->Lname."\",\"live\":\"".$row->live."\",
				\"work\":\"".$row->work."\",\"phnum\":\"".$row->phnum."\",\"describe\":\"".$row->describe."\",
				\"email\":\"".$row->email."\",\"username\":\"".$username."\",\"image_src\":\"".$src."\"}]";*/
		
		echo "[{ \"id\":".$row->id.",\"Fname\":\"".$row->fname."\",\"Lname\":\"".$row->lname."\",\"live\":\"".$row->email."\"}]";
	}
	}
	else {
		echo "[{\"status\":\"Incorrect User id\"}]";
		}
	
}
public function update_profile()
	{ //echo"<pre>"; print_r($this->input->get()); exit;
		extract($this->input->get());
		$data['id']   = $user_id;
		$data['fname'] = $fname;
		$data['lname'] = $lname;
		$data['prof_pic']  = $prof_pic;
		$data['email']     = $email;
		//$my_dob  = $dob;
		//$final_date = date($my_dob);
		//$start_date =  strtotime($final_date);
	
	$query   = $this->db->where('id',$user_id)->get('user');
	//print_r($query->result());exit;
	if($query->num_rows() == 0)
	{
	$this->db->insert('user',$data);
	echo '[{"reason_message":"Your profiles added Successfully"}]';
	}
	else {
	$this->db->where('id',$user_id)->update('user',$data);
	echo '[{"reason_message":"Your profiles updated Successfully"}]';
	}
}
	
public function view_profile()
	{
	$user_id	= $this->input->get("user_id");
	$query   = $this->db->where('id',$user_id)->get('user');
	if($query->num_rows()!=0)
	{
	foreach($query->result() as $row){
		$data['user_id']   = $row->id;
		$data['email']   = $row->email;
		$data['id'] = $user_id;
       // $data['profile_pic'] = $this->Gallery->profilepic($row->id, 2);
       
		$f_name  = $row->fname;
		$l_name  = $row->lname;
		$prof_pic  = $row->prof_pic;
		if(!empty($f_name))
		{
		$data['fname']  = $f_name;
		}
		else
		{
			$data['fname'] = 'null';
		}
		if(!empty($l_name))
		{
		$data['lname']  = $l_name;
		}
		else{
		$data['lname'] = 'null';
		}
		if(!empty($prof_pic))
		{
		$data['prof_pic']  = $prof_pic;
		}
		else{
		$data['prof_pic'] = 'null';
		}
	$data['status']  = "success";
		
		$details[]   = $data;
	}
	echo json_encode($details);
	}
	else {
			echo '[{"status":"This user is not available"}]';
	}
		
		
	}

protected function get_login($login)
	{
	//$this->db->where('username', $login);
	$this->db->where('email', $login);
	
	return $this->db->get($this->_table);
	}
protected function _encode($password)
{
	$majorsalt = $this->config->item('DX_salt');
	
	// if PHP5
	if (function_exists('str_split'))
	{
		$_pass = str_split($password);
	}
	// if PHP4
	else
	{
		$_pass = array();
		if (is_string($password))
		{
			for ($i = 0; $i < strlen($password); $i++)
			{
				array_push($_pass, $password[$i]);
			}
		}
	}

	// encrypts every single letter of the password
	foreach ($_pass as $_hashpass)
	{
		$majorsalt .= md5($_hashpass);
	}

	// encrypts the string combinations of every single encrypted letter
	// and finally returns the encrypted password
	return md5($majorsalt);
}
	
}     
        
?>
