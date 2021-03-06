#
# htop Yum repo 
#
package {"htopRepo": 
   ensure => "installed",
   provider => rpm, 
   source => "http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm", 
} 

package {"htop": 
   ensure => "installed",
   require  => Package["htopRepo"]
}


#
# Base packages 
#
Package { ensure => "installed" }
$enhancers = [ "git", "mc", "wget", "curl", "unzip", "nano", "telnet"]
package { $enhancers:  }
