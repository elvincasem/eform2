
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

                      
                            
							<div class="row">
							</div>
							  <!-- Datepicker Block -->
                                <div class="block">
                                    <!-- Datepicker Title -->
                                    <div class="block-title">
                                        
                                        <h2>Filter</h2>
                                    </div>
                                    <!-- END Datepicker Title -->

                                    <!-- Datepicker Content -->
                                    <form action="#" method="post" class="form-horizontal form-bordered" onsubmit="return false;">
                                        <!-- Datepicker for Bootstrap (classes are initialized in js/app.js -> uiInit()), for extra usage examples you can check out http://eternicode.github.io/bootstrap-datepicker -->
                                        <div class="form-group">
										<label class="col-md-3 control-label" for="example-daterange1">Date Range</label>
                                            <div class="col-md-7">
                                                <div class="input-group input-daterange" data-date-format="yyyy-mm-dd">
                                                    <input type="text" id="date1" name="example-daterange1" class="form-control" placeholder="From">
                                                    <span class="input-group-addon"><i class="fa fa-chevron-right"></i></span>
                                                    <input type="text" id="date2" name="example-daterange2" class="form-control" placeholder="To">
                                                </div>
                                            </div>
											<div class="row">&nbsp;</div>
										<label class="col-md-3 control-label" for="example-daterange1">Issue Type</label>
                                            <div class="col-md-3">
                                                <select id="rp_issuetype" name="example-select2" class="select-select2" style="width: 100%;" data-placeholder="Choose one..">
                                                   
													<option value="Change Order">Change Order</option>
													<option value="Damaged Part">Damaged Part</option>
													<option value="Defective Part">Defective Part</option>
													<option value="Design Issue">Design Issue</option>
													<option value="Incomplete">Incomplete</option>
													<option value="Incorrect Assembly">Incorrect Assembly</option>
													<option value="Incorrect Part">Incorrect Part</option>
													<option value="Incorrect Reference Document">Incorrect Reference Document</option>
													<option value="Missing Part">Missing Part</option>
													<option value="Physical Misalignment">Physical Misalignment</option>
													<option value="Solutions Request">Solutions Request</option>
						
						
                                                </select>
                                            </div>
											<div class="row"></div>
                                            <label class="col-md-3 control-label" for="example-daterange1">Level 0</label>
                                            <div class="col-md-3">
                                                <select id="level0"  class="form-control">
												<option value="NONE">NONE</optioN>
													<?php
													foreach ($level0 as $listofyears):
				
										echo "<option value=".$listofyears['rp_level0'].">".$listofyears['rp_level0']."</option>";
				
				
													endforeach;
													?>
												
												</select>
                                            </div>
											<div class="row"></div>
                                            <label class="col-md-3 control-label" for="example-daterange1">Level 1</label>
                                            <div class="col-md-3">
                                                <select id="level1"  class="form-control">
												<option value="NONE">NONE</optioN>
													<?php
													foreach ($level1 as $listofyears):
				
										echo "<option value=".$listofyears['rp_level1'].">".$listofyears['rp_level1']."</option>";
				
				
													endforeach;
													?>
												
												</select>
                                            </div>
											
											<div class="row"></div>
                                            <label class="col-md-3 control-label" for="example-daterange1">Level 2</label>
                                            <div class="col-md-3">
                                                <select id="level2"  class="form-control">
												<option value="NONE">NONE</optioN>
													<?php
													foreach ($level2 as $listofyears):
				
										echo "<option value=".$listofyears['rp_level2'].">".$listofyears['rp_level2']."</option>";
				
				
													endforeach;
													?>
												
												</select>
                                            </div>
											
											
											
											
											
											
											
											
											
                                        </div>
                                        
                                        <div class="form-group form-actions">
                                            <div class="col-md-12 col-md-offset-6">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary" onclick="custom_report();">Generate</button>
                                                <button type="reset" class="btn btn-effect-ripple btn-danger">Reset</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END Datepicker Content -->
                                </div>
                                <!-- END Datepicker Block -->
							

                    </div>
                    <!-- END Page Content -->
                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
       
