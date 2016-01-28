task :default => [:validate]

task :validate do
  begin
    ruby ./tester.rb
    break
  rescue Exception => e
    raise 'Error could not run file'
  end
end
