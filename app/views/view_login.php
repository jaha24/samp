<?php 
    $this->load->view('administrator/header.php');
?>    

<?php
    echo '<div id="page-wrapper2"><div id="page-inner2">';

   // $this->load->view('admin/sidebar');
   
 
    echo '<div id="">';
?>

<style> 
	.error_msg {
    color: #a94442;
    margin: 10px 0 0;
    text-align: left;
}
header{
	display:none;
}
.footer{
	display:none;
}
.page-header,.text_box_text{
	color: white;
}
.top-sp{
	/*background: linear-gradient(230deg,#a24bcf,#4b79cf,#4bc5cf);*/
}
.login-hg
{
	height:650px;
}
</style>


<script type="text/javascript" src="<?php echo base_url();?>js/jquery.validate.js"></script>
<script src="<?php echo base_url() ?>js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>js/jquery-ui.js" type="text/javascript"></script>
<script src="<?php echo base_url() ?>js/jquery.validation.js" type="text/javascript"></script>

<?php 
        $this->load->library('mongo_db');
        $category = $this->mongo_db->db->admin->find();
       foreach ($category  as $cat)
	   {
        $name=$cat['username'];
       $passwd=$cat['password'];
       }
         ?>

<script type="text/javascript">
$( document ).ready(function() {
 	$("#myform").validate({
        rules: 
	        {
				 'username':
				 {
				  required :true,
				 },
				 'password':
				 {
				  required:true,
				  
				 
				 },
			},
		 messages:
		    {
				'username':
				{
				  required:"Username can't be blank",
				},
				'password':
				{
				  required:"Password can't be blank",
				},
		    },
    errorClass:'error_msg',
    errorElement: 'div',
    errorPlacement: function(error, element)
    {
        error.appendTo(element.parent());
    },
   
    submitHandler: function()
    {
        document.myform.submit();
    }
    });
  });	
  
  function pasuser(form) {
            
            if (form.username.value!='<?php echo $name ;?>' && form.password.value!='<?php echo $passwd ;?>'){
                alert("Invalid Username and Password")
                }
else if (form.username.value!='<?php echo $name ;?>') { alert("Invalid Username")}
else if (form.password.value!='<?php echo $passwd ;?>') {  alert("Invalid Password")} 
return false;  
}				
				 
</script>
 
 <style>
 	.check_error{
 		margin-left:85px !important;
 		width: 170px !important;
 	}
 	.login{
 		padding: 0px 5px;
 	}
 </style>

<!--CONTENT-->
<div class="container-fluid">

    <div class="row top-sp login-hg">
    	<p class="signin_txt">Sign in</p>
            <form style="" class="myform_login" autocomplete="off" method="post" id="myform" action="<?php echo base_url('administrator/admin/login'); ?>">
   
        <div class="col-xs-12 no_padding">
        	<div class="col-xs-12 no_padding text-center">
               			<i aria-hidden="true" class="fa fa-user useradmin"></i>
               			<p class="admin_txt">Admin</p>
                        <div class="col-xs-12"><input class="text_box_admin" type="text" name="username" id="username" value=""/></div>
 
                        
                        <div class="col-xs-12"><input class="text_box_admin" type="password" name="password" id="password" value=""/></div>
                		
                		
                		<div class="col-xs-12">
                			<input class="btn-default" name="loginAdmin" id="admin_login" type="submit" value="Submit"  onClick="pasuser(this.form)">
                		</div>
                		<!-- <div class="col-md-2 col-sm-2 col-xs-12">
                        <input class="btn-default" name="reset" type="reset" value="Reset"></div> -->
  <!--                      <a href="<?php echo base_url('administrator/forgotpassword/'); ?>">Forget password?</a>
        
        <p class="login-text1">Use a valid email and password to gain access to the Administrator Back-end.</p>
        <p class="login-text2"><a href="<?php echo base_url(); ?>">Return to site Home Page</a></p>-->
<!--END OF CONTENT-->
</div>
</div>
</div>




  <?php  echo '</div></div></div>';
?>
<?php 
    //$this->load->view('administrator/footer.php');
?>    
