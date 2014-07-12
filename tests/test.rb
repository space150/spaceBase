require "pathname"

puts `compass compile`

test_dirs = `find ./ -type d`.split("\n").map do |dir|
  Pathname.new(dir).realpath.to_s
end

# Get rid of current dir.
test_dirs.shift

test_dirs.each do |dir|
  Dir.chdir(dir)
  css = Dir['*.css']

  diff = `diff #{css.join(" ")} 2>/dev/null`
  if !diff.empty?
    puts "FAILED: " + dir
    puts `diff -y #{css.join(" ")}`
    puts "\n"
  end
end
