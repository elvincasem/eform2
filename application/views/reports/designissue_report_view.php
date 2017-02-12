
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
                                            <div class="col-md-9">
                                                <select id="selectyear"  class="form-control">
													<?php
													foreach ($yeardata as $listofyears):
				
										echo "<option value=".$listofyears['exceptionyear'].">".$listofyears['exceptionyear']."</option>";
				
				
													endforeach;
													?>
												
												</select>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group form-actions">
                                            <div class="col-md-9 col-md-offset-3">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary" onclick="designissue_report_chart();">Submit</button>
                                                <button type="reset" class="btn btn-effect-ripple btn-danger">Reset</button>
                                            </div>
                                        </div>
                                    </form>
                                    <!-- END Datepicker Content -->
                                </div>
                                <!-- END Datepicker Block -->
							
							<div class="col-lg-3">
                                <!-- Partial Responsive Block -->
                                <div class="block">
                                    <!-- Partial Responsive Title -->
                                    <div class="block-title">
                                        <h2>Design Issue Total by Month</h2>
                                    </div>
                                    <!-- END Partial Responsive Title -->

                                    <!-- Partial Responsive Content -->
                                    <table class="table table-striped table-borderless table-vcenter">
                                        <thead>
                                            <tr>
                                                <th>Month</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
										//print_r($issuetype_report);
										//$start;
										//$end;
										$start=null;
										$end=null;
											foreach ($designissue_report as $result):
											
											echo "<tr>";
											echo "<td>".$result['calendarmonth']."</td>";
											echo "<td>".$result['totalissue']."</td></tr>";
											
											if($start==null){
												$start =$result['totalissue'];
											}
											$end = $result['totalissue'];
											
											
											endforeach;
											?>
																		
											
										<input type="hidden"  id="start" value="<?php echo $start;?>">	
										<input type="hidden"  id="end" value="<?php echo $end;?>">
										<input type="hidden"  id="year" value="<?php echo $year;?>">	
                                        </tbody>
                                    </table>
                                    <!-- END Partial Responsive Content -->
                                </div>
                                <!-- END Partial Responsive Block -->
                            </div>
							
							<div class="col-lg-9">
							
									<input type="hidden" id="chartvalues" value='<?php echo$designissue_report_charts;?>'>
										<!-- Partial Responsive Block -->
								<div class="block">
									<div style="text-align:center;">
										<div id="chart-container" ></div>
									</div>
								</div>
							</div>
							
				<div class="row">
					<div class="col-lg-12">
					
					</div>
					
				</div>
                    
<script type="text/javascript">
  FusionCharts.ready(function(){
	  
	  console.log(document.getElementById("chartvalues").value);
	  var jsonvalues = JSON.parse(document.getElementById("chartvalues").value);
	  var start = document.getElementById("start").value;
	  var end = document.getElementById("end").value;
	  var year = document.getElementById("year").value;
	  console.log(start);
	  
    var fusioncharts = new FusionCharts({
    type: 'column3d',
    renderAt: 'chart-container',
    width: '680',
    height: '450',
    dataFormat: 'json',
    dataSource: {
        "chart": {
			//pareto3d
		"caption": "DESIGN ISSUE TOTAL BY MONTH",
            "subcaption": year,
            "xaxisname": "Year "+year,
            "yaxisname": "Missing Parts",
            "numberprefix": "",
            "theme": "fint"
			
			
        },
        "data":jsonvalues,
		 "trendlines": [{
            "line": [
                {
                    "startvalue": start,
                    "endValue": end,
                    "color": "#1aaf5d",
                    "valueOnRight": "1",
                    "dashed": "1",
                    "displayvalue": "Trend"
                }
            ]
        }]
    }
}
);
    fusioncharts.render();
});
</script>

						


                        
                    </div>
                    <!-- END Page Content -->
                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
       
