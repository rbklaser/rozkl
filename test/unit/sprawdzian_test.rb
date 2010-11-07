require 'test_helper'

class SprawdzianTest < ActiveSupport::TestCase
  test "Should search" do
	s = Sprawdzian.new
	assert_true s
  end
end
