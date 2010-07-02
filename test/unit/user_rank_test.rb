require 'test_helper'

class UserRankTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert UserRank.new.valid?
  end
end
