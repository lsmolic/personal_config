require 'open3'
require 'shellwords'
require 'fileutils'

require_relative 'lib/profile'


# update repo
system('git pull origin master')

config = {
	profile_path: File.expand_path('~/.profile'),
	symlink_paths: [
		{source: File.expand_path('~/.profile'), target: File.join(Dir.pwd, '.profile')},
		{source: File.expand_path('~/.bashrc'), target: File.join(Dir.pwd, '.bashrc')}
	]
}

profile = Profile.new(config[:profile_path])
profile.setup_symlinks(config[:symlink_paths])