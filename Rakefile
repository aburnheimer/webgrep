require "bundler/gem_tasks"

task :clean do
  gems = Dir.glob("*.gem")
  gems.each do |gem|
    File.delete gem
  end
end
