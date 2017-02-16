
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
			<?php $this->load->view('inc/subnav_view'); ?>
<!-- Tables Row -->
<div class="row">
   <div class="col-lg-12">
            <!-- Partial Responsive Block -->
			
			 <!-- Regular Modal -->
                <div id="addproject" class="modal" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h3 class="modal-title"><strong>Add Project</strong></h3>
                            </div>
                            <div class="modal-body">
                                
								
								<!-- Input States Block -->
            <div class="block">
                

                <!-- Input States Content -->
                <form action="#" method="post" class="form-horizontal" onsubmit="return false;">
                    <div class="form-group">
					<input type="hidden" id="projectid" name="state-normal" class="form-control" >
                        <label class="col-md-3 control-label" for="state-normal">Project Name *</label>
                        <div class="col-md-7">
                            <input type="text" id="projectname" name="state-normal" class="form-control" >
                        </div>
						
						<label class="col-md-3 control-label" for="state-normal">Project Number</label>
                        <div class="col-md-7">
                            <input type="text" id="projectnumber" name="state-normal" class="form-control" >
                        </div>
						<label class="col-md-3 control-label" for="state-normal">Project Type</label>
                        <div class="col-md-7">
                            <select id="projecttype" name="example-select" class="form-control" size="1">
							<option value="0"></option>
                                
                                <option value="Counter">Counter</option>
                                <option value="Custom">Custom</option>
                                <option value="Deficiency">Deficiency</option>
								<option value="Dispatch">Dispatch</option>
								<option value="FAA">FAA</option>
								<option value="Good Will">Good Will</option>
								<option value="Honeywell">Honeywell</option>
								<option value="Identity">Identity</option>
								<option value="Millwork">Millwork</option>
								<option value="Parts Job">Parts Job</option>
								<option value="Raytheon">Raytheon</option>
								<option value="Response">Response</option>
								<option value="Strategy Air S-S">Strategy Air S-S</option>
								<option value="Strategy Air">Strategy Air</option>
								<option value="Strategy">Strategy</option>
								<option value="Strategy 08">Strategy 08</option>
								<option value="Strategy SX">Strategy SX</option>
								<option value="Warranty">Warranty</option>
								<option value="Vantage">Vantage</option>
								<option value="Prysm">Prysm</option>
								<option value="Strategy ICFC">Strategy ICFC</option>
								
								
                            </select>
                        </div>
						
						<label class="col-md-3 control-label" for="state-normal">Date</label>
                        <div class="col-md-7">
                          <input type="text" id="projectdate" name="example-datepicker3" class="form-control input-datepicker" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd">
                        </div>
						
						<label class="col-md-3 control-label" for="state-normal">Sign-Off Originator</label>
                        <div class="col-md-7">
                            <input type="text" id="signoff" name="state-normal" class="form-control" >
                        </div>
						
						<div class="row"></div>
						<label class="col-md-3 control-label" for="state-normal">Project Type</label>
                        <div class="col-md-7">
                            <select id="country" name="example-select" class="form-control" size="1">
							
                                <option value="Canada">Canada</option>
                                <option value="China">China</option>
								
                            </select>
                        </div>
						
                    </div>
                    
                </form>
                <!-- END Input States Content -->
            </div>
            <!-- END Input States Block -->
								
								
								
                            </div>
                            <div class="modal-footer">
                                <button type="button" id="saveproject" class="btn btn-effect-ripple btn-primary" onclick="saveproject();">Save and Edit Details</button>
								<button type="button" id="updateproject" class="btn btn-effect-ripple btn-primary" onclick="updateproject();">Update</button>
                                <button type="button" class="btn btn-effect-ripple btn-danger" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END Regular Modal -->
			
            
	<div class="block full">
        <div class="block-title">
            <h2>List</h2>
			<button type="button" id="addproject" class="btn btn-effect-ripple btn-primary" href="#addproject" data-toggle="modal" onclick="addproject();">Add Project</button>
			<?php //print_r($heidirectory);?>
        </div>
        <div class="table-responsive">
            <table id="example-datatable" class="table table-striped table-bordered table-vcenter table-hover">
                <thead>
                    <tr>
                        <th>Project Name</th>
						<th>Project Number</th>
						<th>Project Type</th>
						<th>Date</th>
						<th>Originator</th>
						<th>Country</th>
						<th></th>
                    </tr>
                </thead>
                <tbody>
				<?php
				
				foreach ($projectlist as $projects):
				//$heiname = strtoupper($hei['instname']);
				echo "<tr class='odd gradeX'>";
				echo "<td><h4><strong><a href='projects/details/".$projects['projectid']."'>".$projects['projectname']."</a></h4></strong></td>";
				echo "<td>".$projects['projectnumber']."</td>";
				echo "<td>".$projects['projecttype']."</td>";
				echo "<td>".$projects['formdate']."</td>";
				echo "<td>".$projects['originator']."</td>";
				echo "<td>".$projects['country']."</td>";
				
				echo "<td class='center'> 
					
					<button class='btn btn-primary' onClick='editproject(".$projects['projectid'].")'  data-toggle='modal' data-target='#addproject'><i class='fa fa-edit'></i></button>
					<button class='btn btn-danger notification' id='notification' onClick='deleteproject(".$projects['projectid'].")'><i class='fa fa-times'></i></button>
				</td>";
				echo "</tr>";
				
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


