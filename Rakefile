# Rakefile for endpoint hitter      -*- ruby -*-

# Copyright 2003, 2004, 2005 by Jim Weirich (jim@weirichhouse.org)
# All rights reserved.

# This file may be distributed under an MIT style license.  See
# MIT-LICENSE for details.

require 'rbconfig'
require 'hoe'

Hoe.plugin :git
Hoe.plugin :minitest
Hoe.plugin :travis
Hoe.plugin :gemspec

hoe = Hoe.spec 'rake' do
  developer 'Test', 'test@t.org'

  require_ruby_version     '>= 1.9.3'
  require_rubygems_version '>= 1.3.2'
  
  license "MIT"

end
