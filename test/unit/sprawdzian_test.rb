require 'test_helper'

class SprawdzianTest < ActiveSupport::TestCase
  fixtures :all
  test "Should multiple search" do
	s = Sprawdzian.multiSearch("special III")
	assert_equal 3, s.count
	assert_equal "Special one for searching, for special and III should find This one, second one and the fourth one", s[0].name
	assert_equal "test2", s[1].name
	assert_equal "nothing particular", s[2].name
  end
end
