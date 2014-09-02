namespace :production do
	task :deploy do
		puts "precompile assets to production ... "
		system('rake assets:production')
		puts "add and commit ... "
		system('git add -A')
		system('git commit -m "assets precompile" ')
		puts "push ... "
		system('git push origin master')
		puts "back to development assets again ... "
		system('rake assets:development')
	end
end