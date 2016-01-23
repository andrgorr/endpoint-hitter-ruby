require './tester.rb'

task :default => [:validate]

task :validate do
  begin
    ruby -r tester.rb -e FileTest.test_method
    break
  rescue Exception => e
    raise 'Error could not run file'
  end
end
