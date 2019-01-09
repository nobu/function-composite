#!/usr/bin/ruby

require 'test/unit'

base_dir = File.expand_path("../..", __FILE__)
$LOAD_PATH.unshift("#{base_dir}/lib")

begin
  require 'test/unit/notify'
rescue LoadError
end

exit Test::Unit::AutoRunner.run(true, "#{base_dir}/test")
