desc "Run scss-lint"
task :lint do
  puts `bundle exec scss-lint scss`
end

desc "Run tests"
task :test do
  Dir.chdir "./tests"
  require_relative "./tests/test"
end
