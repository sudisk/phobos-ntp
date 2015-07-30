# installation du logiciel

class ntp::install inherits ntp
{
        package { $package_name :      
				ensure                => $package_ensure, 
				name                  => $package_name,         
				#install_options      => $package_install_options,
				#package_settings     => $package_settings,
				#reinstall_on_refresh => $package_reinstall_on_refresh,
				#responsefile         => $package_responsefile,
				#source               => $package_source,
				#uninstall_options    => $package_uninstall_options,
				}
        
}