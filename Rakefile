namespace :spacebase do

  desc "Build spaceBase code and docs into `dist/`"
  task :build do
  	sh "mkdir -p dist/"
    sh "compass compile --css-dir dist/stylesheets --javascripts-dir dist/javascripts"
    sh "cp styleguide.html dist/index.html"
  end

end
