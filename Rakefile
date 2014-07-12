desc "Run scss-lint"
task :lint do
  puts `scss-lint scss`
end

desc "Run tests"
task :test do
  Dir.chdir "./tests"
  puts `ruby test.rb`
end
