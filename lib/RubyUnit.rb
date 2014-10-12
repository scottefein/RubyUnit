module RubyUnit
end

require 'RubyUnit/TestCase'
require 'RubyUnit/Runner'
# Automatically run test cases
Module.new do
  if $ERROR_INFO.nil?
    at_exit do
      RubyUnit::Runner.run
    end
  end
end
