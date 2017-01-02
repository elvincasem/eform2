
<div id="page-container" class="header-fixed-top sidebar-visible-lg-full">
	
	
	<!--rightsidebar here-->
	<?php //$this->load->view('rightsidebar_view'); ?>
	
	<!--main sidebar here -->
	<?php $this->load->view('leftsidebar_view'); ?>

	<!-- Main Container -->
	<div id="main-container">
		  <?php $this->load->view('subheader_view'); ?>

		<!-- Page content -->
		<div id="page-content">
			<?php $this->load->view('heidirectory/subnav_view'); ?>
<!-- Tables Row -->
<div class="row">
   <div class="col-lg-12">
            <!-- Partial Responsive Block -->
            
	<div class="block full">
        <div class="block-title">
            <a href="#modal-regular" class="btn btn-effect-ripple btn-primary" data-toggle="modal">Add Scholars</a>
			<?php //print_r($heidirectory);?>
        </div>
        <div class="table-responsive">
            <table id="example-datatable" class="table table-striped table-bordered table-vcenter table-hover">
                <thead>
                    <tr>
                        <th class="text-center" style="width: 50px;">ID</th>
                        <th>Students Name</th>
						<th>Type</th>
						<th>Award</th>
						<th>Gender</th>
                      <!--  <th>Contact No.</th> -->
						<th>Province</th>
                        <th class="text-center">Status</th>
						<th class="text-center">Course</th>
                    </tr>
                </thead>
                <tbody>
				
				<?php
				
				foreach ($scholars_list as $scholar):
				$studentname = strtoupper($scholar['firstname']." ".$scholar['middlename']." ".$scholar['lastname']." ".$scholar['extension']);
				
				//echo $studentname;
				
				echo "<tr>";
				echo "<td>".$scholar['scholarid']."</td>";
				echo "<td><a href='".base_url()."scholar/profile/".$scholar['scholarid']."'>".$studentname."</td>";
				echo "<td>".$scholar['typedescription']."</td>";
				echo "<td>".$scholar['awardnumber']."</td>";
				echo "<td>".$scholar['gender']."</td>";
				//echo "<td>".$hei['instformownership']."</td>";
				//echo "<td>".$scholar['contactno']."</td>";
				echo "<td>".$scholar['province']."</td>";
				echo "<td>".$scholar['status2']."</td>";
				echo "<td>".$scholar['course']."</td></tr>";
				//echo "<td><button type='submit' class='btn btn-effect-ripple btn-primary'  href='#editprogram' data-toggle='modal' onclick='editprogram(".$scholar['scholarid'].");'><i class='fa fa-pencil-square'></i></button></td></tr>";
				
				endforeach;
				
				?>
				
				
				
				
                    
                </tbody>
            </table>
        </div>
    </div>
   </div> <!-- end column -->
</div> <!-- end row -->
			
			
			

			
		</div>
		<!-- END Page Content -->
	</div>
	<!-- END Main Container -->
</div>
<!-- END Page Container -->


