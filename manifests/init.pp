#Classe principale

class ntp 
(
  ######################################## PACKAGES ############################################
  $package_name                     = $ntp::params::package_name,
  $package_ensure                   = $ntp::params::package_ensure,
  #$package_install_options         = $ntp::params::package_install_options,                
  #$package_settings                = $ntp::params::package_settings,              
  #$package_reinstall_on_refresh    = $ntp::params::package_reinstall_on_refresh,          
  #$package_responsefile            = $ntp::params::package_responsefile,              
  #$package_source                  = $ntp::params::package_source,              
  #$package_uninstall_options       = $ntp::params::package_uninstall_options,              
      
  ######################################## SERVICES ############################################
	$service_manage                    = $ntp::params::service_manage,
	$service_name                      = $ntp::params::service_name, 
	$service_ensure                    = $ntp::params::service_ensure,            
	#$service_binary                   = $ntp::params::service_binary,
	$service_enable                    = $ntp::params::service_enable,  
	#$service_flags                    = $ntp::params::service_flags,  
	$service_hasrestart                = $ntp::params::service_hasrestart,   
	$service_hasstatus                 = $ntp::params::service_hasstatus,  
	#$service_manifest                 = $ntp::params::service_manifest,   
	$service_path                      = $ntp::params::service_path,     
	#$service_pattern                  = $ntp::params::service_pattern,    
	#$service_restart                  = $ntp::params::service_restart,   
	#$service_start                    = $ntp::params::service_star,   
	#$service_status                   = $ntp::params::service_status,   
	#$service_stop                     = $ntp::params::service_stop,    

  ###################################### CONFIG_FILES ########################################## 
  $file_name                         = $ntp::params::file_name,    
  $file_path                         = $ntp::params::file_path,     
  $file_ensure                       = $ntp::params::file_ensure,      
  $file_backup                       = $ntp::params::file_backup,    
  $file_checksum                     = $ntp::params::file_checksum,   
  $file_content                      = $ntp::params::file_content,    
  #$file_ctime                       = $ntp::params::file_ctime,     
  $file_force                        = $ntp::params::file_force,    
  $file_group                        = $ntp::params::file_group,   
  #$file_ignore                      = $ntp::params::file_ignore,    
  $file_links                        = $ntp::params::file_links,     
  $file_mode                         = $ntp::params::file_mode,     
  #$file_mtime                       = $ntp::params::file_mtime,    
  $file_owner                        = $ntp::params::file_owner,    
  #$file_provider                    = $ntp::params::file_provider,  
  $file_purge                        = $ntp::params::file_purge,       
  $file_recurse                      = $ntp::params::file_recurse,      
  $file_recurselimit                 = $ntp::params::file_recurselimit,  
  $file_replace                      = $ntp::params::file_replace,     
  #$file_selinux_ignore_defaults     = $ntp::params::file_selinux_ignore_defaults, 
  #$file_selrange                    = $ntp::params::file_selrange,  
  #$file_selrole                     = $ntp::params::file_selrole,    
  #$file_seltype                     = $ntp::params::file_seltype,   
  #$file_seluser                     = $ntp::params::file_seluser,   
  $file_show_diff                    = $ntp::params::file_show_diff,   
  $file_source                       = $ntp::params::file_source,     
  $file_source_permissions           = $ntp::params::file_source_permissions, 
  $file_sourceselect                 = $ntp::params::file_sourceselect,
  $file_target                       = $ntp::params::file_target,
  #$file_validate_cmd                 = $ntp::params::file_validate_cmd,  
  #$file_validate_replacement         = $ntp::params::file_validate_replacement,
 
  ## Dirs
  #$config_dir         = $ntp::params::config_dir,
  #$service_dir        = $ntp::params::service_dir,
  #$home               = $ntp::params::home,

  ## Conf Files
  #$config_file        = $ntp::params::config_file,
  #$service_file       = $ntp::params::service_file,
  #$config_template    = $ntp::params::config_template,
  
  ## settings
  #$module_settings     = $ntp::params::module_settings,
  #$preferred_servers   = $ntp::params::preferred_servers,
  #$servers             = $ntp::params::servers,

) inherits ntp::params


{
   class{'ntp::install': } ->
   #include ntp::install
   class{'ntp::config': } ~>
   class{'ntp::service': } ->
   Class["ntp"]
		  
}

