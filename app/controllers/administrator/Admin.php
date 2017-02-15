<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{

		parent::__construct();
		$this->load->model('users_model');
		//$this->load->model('admin_model');
	}
	public function index()
	{
	     
	     if(check_logged()) 
	     {
	       redirect('administrator/admin/home');
	   	 
	   }
	   else 
	   {
	    
	   	   $this->load->view('administrator/view_login');
		}
	  
	}
	public function login()
	{
	   /*
	   $this->load->model('Admin_model');
			  $this->load->library('form_validation');
			  $this->form_validation->set_rules('username', 'username', 'trim|required');
			  $this->form_validation->set_rules('password', 'password', 'trim|required');
			  if($this->form_validation->run())
			   {
					 $username=$this->input->post('username');
						   $password=$this->input->post('password');   
							$validate=$this->admin_model->check_valid_user_or_not();
						   // print_r($validate);
							 if( $validate!="") 
							{
																   $data = array('last_activity'=> time(), 'username' => $this->input->post('username'),'logged_in' => true);
																															$this->session->set_userdata($data);
																  redirect('administrator/admin/home');
						   }
						   else
						   {
														  //echo '<script>alert("Invalid username and password")</script>';  
																				   }
					   }  */
	    
			
		$this->load->view('administrator/view_login');
	}
	

	 /*
	  function logout()
		   {
				$this->session->sess_destroy();
				redirect('administrator/admin/login');
					  }*/
	 
	  
		
			
	  
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */