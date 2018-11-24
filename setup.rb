require 'open3'
require 'shellwords'
require 'fileutils'

# update repo

symlink_path = File.expand_path('~/.profile')
target_path = File.join(Dir.pwd, '.profile')
system('git pull origin master')
is_symlink = system("[[ -L \"#{symlink_path}\" ]]")
symlink_command = "ln -s #{target_path} #{symlink_path}"
if is_symlink 
	# fix it just incase
	system("unlink #{symlink_path}")
	system(symlink_command)
else
	if File.file?(symlink_path)
		system("mv #{symlink_path} #{symlink_path}.bak")
		puts "Backed up #{symlink_path} to #{symlink_path}.bak"
	end
	puts "Creating symlink \"#{symlink_command}\""
	system(symlink_command)
end


puts "Sourcing the new bash profile #{symlink_path}"
system("source #{symlink_path}")