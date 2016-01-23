class FileTest

  def self.test_method
    if not File.exist?('./hitter.rb')
      raise 'Error: Hitter not found'
    end
  end

end
