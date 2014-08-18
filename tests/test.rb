require "pathname"

puts "Building test files..."
puts `compass compile`

puts "\nRunning..."
test_dirs = `find ./ -type d`.split("\n").map do |dir|
  Pathname.new(dir).realpath.to_s
end

# Don't stare directly at the Sass cache.
test_dirs.reject! do |dir|
  dir =~ /sass-cache/
end

# Get rid of current dir.
test_dirs.shift

test_dirs.each do |dir|
  Dir.chdir(dir)
  css = Dir["*.css"]

  # If there's no expected output, copy the actual output for next time.
  expected = Dir["expected.css"]
  if expected.length == 0
    puts "No expected output for #{dir}!"
    puts "Copying actual output to expected.css, just this time."
    `cp input.css expected.css`
    # There's no point in diffing.
    next
  end

  diff = `diff -B #{css.join(" ")} 2>/dev/null`
  if !diff.empty?
    puts "FAILED: " + dir
    puts `diff -y #{css.join(" ")}`
    puts "\n"
  else
    # Everything went okay.
    puts dir + " ✓"
  end

  # Clean up.
  `rm -f input.css`
end
