# desc "Explaining what the task does"
# task :team_manager do
#   # Task goes here
# end

desc 'Show all of the routes'
task :routes => ['environment', 'app:routes'] do
end
