namespace :spacebase do

  desc "Build spaceBase code and docs into `dist/`"
  task :build do
  	sh "mkdir -p dist/"
    sh "mkdir -p dist/javascripts/vendor"
    sh "compass compile --css-dir dist/stylesheets --javascripts-dir dist/javascripts"
    cp Dir.glob("javascripts/*.js"),          "dist/javascripts/"
    cp Dir.glob("javascripts/compiled/*.js"), "dist/javascripts/compiled/"
    cp Dir.glob("javascripts/vendor/*.js"),   "dist/javascripts/vendor/"
    cp "styleguide.html", "dist/index.html"
  end

end
