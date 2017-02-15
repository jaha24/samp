<?php
/**
 * Dropinn Email_model Class
 *
 * Email settings information in database.
 *
 * @package		Dropinn
 * @subpackage	Models
 * @category	Settings 
 * @author		Cogzidel Product Team
 * @version		Version 1.5
 * @link		http://www.cogzidel.com
 
 */
	 class Email_model extends CI_Model 
		{
	 
	/**
	 * Constructor 
	 *
	 */
	
	  function Email_model() 
	  {
      parent::__construct();
   }//Controller End
	
	// --------------------------------------------------------------------
		
	/**
	 * Get Email settings from database
	 *
	 * @access	private
	 * @param	nil
	 * @return	array	payment settings informations in array format
	 */
	 function getEmailSettings($conditions=array())
	 {
	 	if(count($conditions)>0)		
	 		$this->db->where($conditions);
	  
	 $this->db->from('email_templates');
		$this->db->select('email_templates.id,email_templates.type,email_templates.title,email_templates.mail_subject,email_templates.email_body_text,email_templates.email_body_html');
		$result = $this->db->get();
		return $result;
			
	 }//End of getEmailSettings Function
	 
	 	
	/**
	 * Add Email Settings
	 *
	 * @access	private
	 * @param	array	an associative array of insert values
	 * @return	void
	 */
	 function addEmailSettings($insertData=array())
	 {
	 	$this->db->insert('email_templates', $insertData);
		return; 
	 }//End of getGroups Function
	 // --------------------------------------------------------------------
	 
	 /**
	 * delete Email Settings
	 *
	 * @access	private
	 * @param	array	an associative array of insert values
	 * @return	void
	 */
	 function deleteEmailSettings($condition=array())
	 {
	    if(isset($condition) and count($condition) > 0)
			$this->db->where($condition);
		
	 	$this->db->delete('email_templates');
		return; 
	 }//End of getGroups Function
	 //------------------------------------------------------------------------
	 
	 /**
	 * Send Mail
	 *
	 * @access	private
	 * @param	array
	 * @return	array	site settings informations in array format
	 */
	function sendMail($to = '', $from_email = '', $from_name = '', $email_name = '', $splvars = array(), $cc = '', $bcc = '', $type = 'html')
	{
		//print_r($splvars);
		// load Email Library 
		$this->load->library('email');
		
		$mailer_type     = $this->db->get_where('email_settings', array('code' => 'MAILER_TYPE'))->row()->value;
		
		$smtp_port       = $this->db->get_where('email_settings', array('code' => 'SMTP_PORT'))->row()->value;
		
		$smtp_user       = $this->db->get_where('email_settings', array('code' => 'SMTP_USER'))->row()->value;
		
		$smtp_pass       = $this->db->get_where('email_settings', array('code' => 'SMTP_PASS'))->row()->value;
		
		$mailer_mode     = $this->db->get_where('email_settings', array('code' => 'MAILER_MODE'))->row()->value;
		
       // $mailer_domain          = $this->db->get_where('email_settings', array('code' => 'DOMAIN_NAME'));

		$mailer_in_ser           = $this->db->get_where('email_settings', array('code' => 'IN_MAIL_SERVER'));
					
		$mailer_out_ser          = $this->db->get_where('email_settings', array('code' => 'OUT_MAIL_SERVER'));
				
		$smtp_mail_user           = $this->db->get_where('email_settings', array('code' => 'MAIL_USER'));
					
		$smtp_mail_pass         = $this->db->get_where('email_settings', array('code' => 'MAIL_PASS'));

		$smtp_do_port                  = $this->db->get_where('email_settings', array('code' => 'MAIL_DOMAIN_PORT'));
		
		$logo            = $this->db->get_where('settings',array('code' => 'FAVICON_IMAGE'))->row()->string_value;
		$slogan          = $this->db->get_where('settings',array('code' => 'SITE_SLOGAN'))->row()->string_value;
		
		$config['charset']  = 'utf-8';
        $config['protocol'] = 'sendmail';
		
		if($mailer_type == 2)
		{
		$config['protocol']  = 'smtp';
        $config['smtp_host'] = 'ssl://mail.ncr.airtelbroadband.in';
		$config['smtp_port'] = $smtp_port;
		$config['smtp_user'] = $smtp_user;
		$config['smtp_pass'] = $smtp_pass;
		}
		else if($mailer_type == 3)
		{
		$config['protocol']  = 'smtp';
  		$config['smtp_host'] = 'tls://smtp.gmail.com';
		$config['smtp_port'] = $smtp_port;
		$config['smtp_user'] = $smtp_user;
		$config['smtp_pass'] = $smtp_pass;
		}
		else if($mailer_type == 5)
		{
		$config['protocol']  = 'smtp';
  		$config['smtp_host'] = $mailer_in_ser;
		$config['smtp_port'] = $smtp_do_port; 
		$config['smtp_user'] = $smtp_mail_user;
		$config['smtp_pass'] = $smtp_mail_pass;
		}
		
		$subject = '';
		$message = '';
		
		if($email_name != '')
		{
		$conditionUserMail = array('email_templates.type' => $email_name);
		$result            = $this->getEmailSettings($conditionUserMail);
		
		$rowUserMailConent = $result->row();
		
		$subject     = strtr($rowUserMailConent->mail_subject, $splvars);
		//print_r($splvars);
		//exit;
					if($mailer_mode == 'html')
					{
					$config['mailtype'] = 'html';
					
					$message = '<table cellspacing="0" cellpadding="0" width="678" style="border:1px solid #e6e6e6; background:#fff;  font-family:Arial, Helvetica, sans-serif; -moz-border-radius: 16px; -webkit-border-radius:16px; -khtml-border-radius: 16px; border-radius: 16px; -moz-box-shadow: 0 0 4px #888888; -webkit-box-shadow:0 0 4px #888888; box-shadow:0 0 4px #888888;">
	            <tr>
																	<td>
																					<table background="'.base_url().'images/email/head_bg.png" width="676" height="156" cellspacing="0" cellpadding="0">
																									<tr>
																													<td style="vertical-align:top;">
																																	<img src="'.base_url().'logo/'.$logo.'" alt="'.$this->dx_auth->get_site_title().'" style=" margin: 15px 0 0 30px;height: 100px;width: 100px;" />
																																</td>
																																<td style="text-transform:uppercase; font-weight:bold; color:#0271b8; width:290px; padding:0 10px 0 0; line-height:28px;">
																																				<p style="margin:0 0 10px 0; color:#0271b8;">'.$slogan.'</p>
																																</td>
																												</tr>
																								</table>
																				</td>
																</tr>
																<tr>
																	<td style="padding:0 10px; font-size:14px;">';
					
					
					
					$message .= strtr($rowUserMailConent->email_body_html, $splvars);
				   //print_r($message);exit;
				  	$cyear=date("Y", time());
					$nyear=$cyear+1; 
					$fburl=$this->db->where('id',2)->get('joinus')->row()->url;
					$youtubeurl=$this->db->where('id',4)->get('joinus')->row()->url;
					$gplusurl=$this->db->where('id',3)->get('joinus')->row()->url;
					$twurl=$this->db->where('id',1)->get('joinus')->row()->url;
					
					$message .= '</td>
                  </tr>
																			<tr>
																			<td>
																			   <table cellpadding="0" cellspacing="0" background="'.base_url().'images/email/footer.png" width="676" height="58" style="text-align:center;">
																			<tr>
																			<td style="font-size:13px; padding:6px 0 0 0; color:#333333;">Copyright '.$cyear.'<span style="color:#0271b8;"><a href="http://hourlyspaces.com">' .  $this->dx_auth->get_site_title().'</a>.</span> All Rights Reserved.</td>
																
																			 
																			 
																			
																			</tr>
																			
																			
																			<tr>
																		
																			 <td><a href="'.$fburl.'"><img src="'.base_url().'images/email/facebook.png" title="Facebook" width="30" height="30"></a>
																			 <a href="'.$twurl.'"><img src="'.base_url().'images/email/twitter.png" title="Twitter" width="30" hight="30"></a>
																			 <a href="'.$gplusurl.'" target="_blank"><img src="'.base_url().'images/email/google.png" title="Google+" width="30" height=30 ></a>
																			<a href="'.$youtubeurl.'" target="_blank"><img src="'.base_url().'images/email/youtube.jpg" title="you tube" width="30" height="30"></a></td>
																			</tr>
																			
																			
																			
																			</table>
																			</td>
																			</tr>
																			</table>';	
																			
											
																		 							
					}
					else
					{
					$config['mailtype'] = 'text';
					$message = strtr($rowUserMailConent->email_body_text, $splvars);
 					
                }
			}
         // print_r($message);exit;
		$config['wordwrap'] = TRUE;
//		echo $message;exit;
		$this->email->initialize($config);
		$this->email->set_newline("\r\n");
		// ID verification start
		if($email_name == "passport_verification")
		{
	    $view = $this->db->where('id',$this->dx_auth->get_user_id())->from('users')->get()->row()->file1;
	    $viewf = $this->db->where('id',$this->dx_auth->get_user_id())->from('users')->get()->row()->file2;
			$this->email->attach(FCPATH.'/images/'.$view); 
		$this->email->attach(FCPATH.'/images/'.$viewf);
		}
   // ID verification end
		 
		 
		$this->email->to($to);
        $this->email->from($from_email,$from_name);
		$this->email->cc($cc);
		$this->email->bcc($bcc); 
  $this->email->subject($subject);
  $this->email->message($message);
		  // print_r($message);exit;
			if ( ! $this->email->send())
			{
			//echo $this->email->print_debugger();exit;
			}
		
	} // Function sendmail End
	
	/**
	 * Update Email Settings
	 *
	 * @access	private
	 * @param	array	an associative array of insert values
	 * @return	void
	 */
	 function updateEmailSettings($id=0,$updateData=array())
	 {
	 	$this->db->where('id', $id);
	 	$this->db->update('email_templates', $updateData);
		 
	 }//End of editGroup Function 
	 
	 function sendHtmlMail($to ='',$from ='',$subject='',$message='',$cc='')
	 {
		// load Email Library 
		$this->load->library('email');
		
		$config['mailtype'] = 'html';
		$config['wordwrap'] = TRUE;
		
		$this->email->initialize($config);

		$this->email->to($to);
    		$this->email->from($from);
		$this->email->cc($cc);
   		$this->email->subject($subject);
    		$this->email->message($message);
		if ( ! $this->email->send())
                          {
		echo $this->email->print_debugger();
		}		
	} 

	 
}
// End Email_model Class
   
/* End of file Email_model.php */ 
/* Location: ./app/models/Email_model.php */
