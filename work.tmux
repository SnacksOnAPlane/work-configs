#-------------------------------------------------------------------------------------------------
#
# Work session
#
#-------------------------------------------------------------------------------------------------

window srmaui

va
vs

  dir ~/code/srma_ui
v run vi
s run foreman start


window srmapi

va
vs

  dir ~/code/srma_api
v run vi
s run unicorn -c config/unicorn_local.rb


window acts

va
vs

  dir ~/code/accounts
v run vi
s run unicorn -c config/unicorn_local.rb


window sql

s

  dir ~/code/accounts
s run bundle exec rails db -p


window actbl

va
va

  dir ~/code/accountable
v run vi
