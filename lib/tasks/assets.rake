namespace :assets do 
	desc "make assets ready for production"
	task :production do |t,args|
		puts "removing public assets folder ..."
		system("rm -r assets")
		puts "copying all compiled assets into public assets folder ..."
		system("cp -r _site/assets assets")

		puts "writing _includes/javascript.html ..."

		javascript_file = `find assets -name 'app*.js' `.to_s.split("\n").first
		puts javascript_file
		filename = "_includes/javascript.html"
		File.open(filename, 'w') do |post|
	      post.puts "<script src='/#{javascript_file}'></script>"
	    end
	end

	task :development do |t,args|
		puts "writing _includes/javascript.html ..."
		filename = "_includes/javascript.html"
		File.open(filename, 'w') do |post|
	      post.puts "{{ 'application' | javascript }}"
	    end
	end
end