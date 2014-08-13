require "rubygems"
require "bundler/setup"
require "stringex"

Dir.glob('lib/tasks/*.rake').each { |r| import r }

desc "test task"
task :tes do
  title = get_stdin("Enter a title for your post: ")
  puts "this is test of rake task : #{title}"
end

def get_stdin(message)
  print message
  STDIN.gets.chomp
end

def ask(message, valid_options)
  if valid_options
    answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") while !valid_options.include?(answer)
  else
    answer = get_stdin(message)
  end
  answer
end