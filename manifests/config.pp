# Configuration du logiciel

class ntp::config inherits ntp
{
  
  file { $file_name :
        	  path                  => $file_path,
			  ensure                => $file_ensure,
			  backup                => $file_backup,
			  checksum              => $file_checksum,
			  content               => $file_content,    
			  #ctime                 => $file_ctime,
			  force                 => $file_force,
			  group                 => $file_group,
			  #ignore                => $file_ignore,
			  links                 => $file_links, 
			  mode                  => $file_mode,
			  #mtime                 => $file_mtime,
			  owner                 => $file_owner,
			  #provider              => $file_provider,
			  purge                 => $file_purge,
			  recurse               => $file_recurse,
			  recurselimit          => $file_recurselimit,
			  replace               => $file_replace,
			  #selinux_ignore_defaults => $file_selinux_ignore_defaults,
			  #selrange              => $file_selrange,
			  #selrole               => $file_selrole,
			  #seltype               => $file_seltype,
			  #seluser               => $file_seluser,
			  show_diff             => $file_show_diff,
			  source                => $file_source,
			  source_permissions    => $file_source_permissions,
			  sourceselect          => $file_sourceselect,
			  target                => $file_target,
			  #validate_cmd          => $file_validate_cmd,
			  #validate_replacement  => $file_validate_replacement,
			  require 				 => Class['ntp::install'],
			  }
}