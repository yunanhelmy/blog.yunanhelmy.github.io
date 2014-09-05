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

	    puts "writing _includes/style.html ..."

		css_file = `find assets -name 'app*.css' `.to_s.split("\n").first
		puts css_file
		filename = "_includes/style.html"
		File.open(filename, 'w') do |post|
	      post.puts "<link rel='stylesheet' href='/#{css_file}'>"
	    end

	    puts "copying all required assets into public assets folder ..."
		system("cp _sass/foundation-icons/foundation-icons.eot assets")
		system("cp _sass/foundation-icons/foundation-icons.svg assets")
		system("cp _sass/foundation-icons/foundation-icons.ttf assets")
		system("cp _sass/foundation-icons/foundation-icons.woff assets")
	end

	task :development do |t,args|
		puts "writing _includes/javascript.html ..."
		filename = "_includes/javascript.html"
		File.open(filename, 'w') do |post|
	      post.puts "{{ 'application' | javascript }}"
	    end

	    puts "writing _includes/style.html ..."
		filename = "_includes/style.html"
		File.open(filename, 'w') do |post|
	      post.puts "{{ 'application' | stylesheet }}"
	    end
	end
end