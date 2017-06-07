gem 'minitest', '~> 5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'simplecov'
SimpleCov.start 'rails'

require_relative '../lib/time.rb'

class TimeTargetingTest < Minitest::Test

end
