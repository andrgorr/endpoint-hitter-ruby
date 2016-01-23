require './hitter.rb'

task :default => [:validate]

task :validate do
  begin
    ruby "hitter.rb"
    break
  rescue Exception => e
    raise 'Error could not run file'
  end
end
