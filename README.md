CAA things
==========

A CMS for Cal Animage Alpha.

### Development setup
The instructions below are written for Debian-based systems. If you have previously setup a Rails environment for your machine then feel free to skip to the Initialization section

### Runtime Installation
#### Required packages
'\curl -sSL https://get.rvm.io | bash -s stable'
'apt-get install imagemagick git'

#### Initialization
Clone the repo and install dependencies [pending git access]
'git clone git@[project-name].git && cd [project-name]'
'bundle install'

If git is unavailable then obtain source code somehow.

Setup and seed the database:
'rake db:setup'

Run the app:
'rails s'

### Production setup
Set up a digitalocean droplet and just GO GO DESU

Might need to install imagemagick actually. If so:
sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev

#### Initialization
Believe in capistrano

cap deploy


#### Notes
Remember to change out the admin account at some point, either via console or the admin dashboard.