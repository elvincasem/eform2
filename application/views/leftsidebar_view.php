<!-- Main Sidebar -->
                <div id="sidebar">
                    <!-- Sidebar Brand -->
                    <div id="sidebar-brand" class="themed-background">
                        <a href="<?=base_url()?>home" class="sidebar-title sidebar-nav-mini-hide">
                            <img src="<?=base_url()?>public/img/evans-logo.png">
                        </a>
                    </div>
                    <!-- END Sidebar Brand -->

                    <!-- Wrapper for scrolling functionality -->
                    <div id="sidebar-scroll">
                        <!-- Sidebar Content -->
                        <div class="sidebar-content">
                            <!-- Sidebar Navigation -->
                            <ul class="sidebar-nav">
								<li>
                                    <a href="<?=base_url()?>home"><i class="gi gi-compass sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Dashboard</span></a>
                                </li>
                                <li class="sidebar-separator">
                                    <i class="fa fa-ellipsis-h"></i>
                                </li>
                                
                               
								<li class="<?php echo $projectclass;?>">
                                    <a href="<?=base_url()?>projects"><i class="gi gi-inbox sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Projects</span></a>
                                </li>
								<!--<li class="<?php echo $projectclass;?>">
                                    <a href="<?=base_url()?>projects"><i class="gi gi-inbox sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Projects</span></a>
                                </li> -->
								<li class="<?php //echo $projectclass;?>">
                                    <a href="<?=base_url()?>label"><i class="gi gi-inbox sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Label Software</span></a>
                                </li>
								
								<li class="<?php echo $reportsclass;?>">
                                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-more_items sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Reports</span></a>
                                    <ul>
										<li class="<?php echo $reports_issuetypeclass;?>">
                                            <a href="<?=base_url()?>issuetype" ><i class="gi gi-user sidebar-nav-icon"></i>Issue Type</a>
                                        </li>
										
									</ul>
								</li>
								<li class="<?php echo $usersclass;?>">
                                    <a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="fa fa-rocket sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Settings</span></a>
                                    <ul>
										<li class="<?php echo $userssubclass;?>">
                                            <a href="<?=base_url()?>users" ><i class="gi gi-user sidebar-nav-icon"></i>Users</a>
                                        </li>
										<li class="<?php //echo $userssubclass;?>">
                                            <a href="<?=base_url()?>panellabels" ><i class="gi gi-user sidebar-nav-icon"></i>Panel Labels</a>
                                        </li>
										
									</ul>
								</li>
								
															
										
                            </ul>
							
							
							
                            <!-- END Sidebar Navigation -->

                        </div>
                        <!-- END Sidebar Content -->
                    </div>
                    <!-- END Wrapper for scrolling functionality -->

                    <!-- Sidebar Extra Info -->
                    <div id="sidebar-extra-info" class="sidebar-content sidebar-nav-mini-hide">
                        
                        <div class="text-center">
                            
                            <small>&copy; Evans Online</small>
                        </div>
                    </div>
                    <!-- END Sidebar Extra Info -->
                </div>
                <!-- END Main Sidebar -->