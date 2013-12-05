set :application, "CAA"
set :repository,  "git@github.com:Rifu/caa-reboot.git"
set :scm, :git
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/var/www/caa"
set :user, "miku"
role :web, "caa.ruuri.com"                          # Your HTTP server, Apache/etc
role :app, "caa.ruuri.com"                          # This may be the same as your `Web` server
role :db,  "caa.ruuri.com", :primary => true # This is where Rails migrations will run
default_run_options[:pty] = true
set :use_sudo, false
require "bundler/capistrano"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # Do nothing.
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
end

# If you are using Passenger mod_rails uncomment this:
#namespace :deploy do
#  task :start do ; end
#  task :stop do ; end
#  task :restart, :roles => :app, :except => { :no_release => true } do
#    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
#end

after "deploy", "deploy:migrate"