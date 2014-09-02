namespace :production do
	task :deploy do
		system('rake assets:production')
		system('git add -A')
		system('git commit -m "assets precompile" ')
		system('git push origin master')
	end
end