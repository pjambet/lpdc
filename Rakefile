desc "Builds the minified CSS and JS assets."
task :minify do
  require './app.rb'
  puts "Building..."

  files = Sinatra::Minify::Package.build(App)
  files.each { |f| puts " * #{File.basename f}" }
  puts "Construction complete!"
end

namespace :db do
  desc "Create the tables"
  task :init do
    require './app.rb'
    puts "Initializing DB..."
    `ruby db/data.rb`
    puts "Data base ready !"
  end
end
