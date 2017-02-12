
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
                                                <div class="input-group input-daterange" data-date-format="yyyy-mm-dd">
                                                    <input type="text" id="date1" name="example-daterange1" class="form-control" placeholder="From" value="<?php echo $datefrom;?>">
                                                    <span class="input-group-addon"><i class="fa fa-chevron-right"></i></span>
                                                    <input type="text" id="date2" name="example-daterange2" class="form-control" placeholder="To" value="<?php echo $dateto;?>">
                                                </div>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group form-actions">
                                            <div class="col-md-9 col-md-offset-3">
                                                <button type="submit" class="btn btn-effect-ripple btn-primary" onclick="grouprootcause_report_chart();">Submit</button>
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
                                        <h2>Overall Exceptions by Group Responsible for Root Cause</h2>
                                    </div>
                                    <!-- END Partial Responsive Title -->

                                    <!-- Partial Responsive Content -->
                                    <table class="table table-striped table-borderless table-vcenter">
                                        <thead>
                                            <tr>
                                                <th>Root Cause</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
										<?php
										//print_r($issuetype_report);
											foreach ($rootcause_report as $result):
											
											echo "<tr>";
											echo "<td>".$result['rp_cause']."</td>";
											echo "<td>".$result['totalcause']."</td></tr>";
											
											endforeach;
											?>
																		
											
											
                                        </tbody>
                                    </table>
                                    <!-- END Partial Responsive Content -->
                                </div>
                                <!-- END Partial Responsive Block -->
                            </div>
							
							<div class="col-lg-9">
							
									<input type="hidden" id="chartvalues" value='<?php echo$rootcause_report_charts;?>'>
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
	 // var jsoncategories = JSON.parse(document.getElementById("categories").value);
	  var jsonvalues = JSON.parse(document.getElementById("chartvalues").value);
	  //console.log(jsonvalues);
	  //var selectedcountry = document.getElementById("current_country").value;
	  
    var fusioncharts = new FusionCharts({
    type: 'pareto3d',
    renderAt: 'chart-container',
    width: '680',
    height: '450',
    dataFormat: 'json',
    dataSource: {
        "chart": {
			//pareto3d
		"caption": "Overall Exceptions by Group Responsible for Root Cause",
        "subCaption": "",
        "paletteColors": "#0075c2",
        "lineColor": "#1aaf5d",
        "xAxisName": "Reported Cause",
        "pYAxisName": "No. of Occurrence",
        "sYAxisname": "Cumulative Percentage",
        "bgColor": "#ffffff",
        "borderAlpha": "20",
        "showCanvasBorder": "0",
        "usePlotGradientColor": "0",
        "plotBorderAlpha": "10",
        "showHoverEffect": "1",
        "showValues": "0",
        "showXAxisLine": "1",
        "xAxisLineColor": "#999999",
        "divlineColor": "#999999",
        "showAlternateHGridColor": "0",
        "subcaptionFontBold": "0",
        "subcaptionFontSize": "14"
			
			
        },
        "data":jsonvalues
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
       
