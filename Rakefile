desc "Builds the minified CSS and JS assets."
task :minify do
  require './app.rb'
  puts "Building..."

  files = Sinatra::Minify::Package.build(App)
  files.each { |f| puts " * #{File.basename f}" }
  puts "Construction complete!"
end

