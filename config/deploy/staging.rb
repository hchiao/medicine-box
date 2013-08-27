server "54.253.120.19", :app, :web, :db, :primary => true
set :deploy_to, "/home/ubuntu/rails_app/production"
ssh_option[:key] = ["$HOME/.ssh/jenkinsKey.pem"]
