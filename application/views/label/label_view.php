<style>
 #iframe1
            {
                height:   100%;
                /*left:     0px;
				top:      0px;*/
                position: absolute;
                width:    100%;
            }
</style>
            <div id="page-container" class="header-fixed-top sidebar-visible-lg-full sidebar-light">
                
				
				<!--rightsidebar here-->
				<?php //$this->load->view('rightsidebar_view'); ?>
				
                <!--main sidebar here -->
				<?php $this->load->view('leftsidebar_view'); ?>

                <!-- Main Container -->
                <div id="main-container">
                   <?php $this->load->view('subheader_view'); ?>

                    <!-- Page content -->
                    <div id="page-content">
                        <!-- First Row -->
                        <div class="row">
                             <iframe id="iframe1" src="elabel" frameborder="0"></iframe>
                        </div>
                        <!-- END First Row -->

						


                        
                    </div>
                    <!-- END Page Content -->
                </div>
                <!-- END Main Container -->
            </div>
            <!-- END Page Container -->
       
