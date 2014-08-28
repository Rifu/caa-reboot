set :application, "CAA"
set :repository,  "git@github.com:Rifu/caa-reboot.git"
set :scm, :git
# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`
set :deploy_to, "/home/caa"
set :user, "root"
role :web, "104.131.139.238"                          # Your HTTP server, Apache/etc
role :app, "104.131.139.238"                          # This may be the same as your `Web` server
role :db,  "104.131.139.238", :primary => true        # This is where Rails migrations will run
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :use_sudo, false
require "bundler/capistrano"
require "rvm/capistrano"
set :rvm_path, '/usr/local/rvm'
set :rvm_bin_path, '/usr/local/rvm/bin'
load 'deploy/assets'

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#namespace :deploy do
#  task :start, :roles => :app do
#    run "touch #{current_release}/tmp/restart.txt"
#  end

#  task :stop, :roles => :app do
    # Do nothing.
#  end

#  desc "Restart Application"
#  task :restart, :roles => :app do
#    run "touch #{current_release}/tmp/restart.txt"
#  end
#end

# If you are using Passenger mod_rails uncomment this:
#namespace :deploy do
#  task :start do ; end
#  task :stop do ; end
#  task :restart, :roles => :app, :except => { :no_release => true } do
#    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#  end
#end

after "deploy", "deploy:migrate"