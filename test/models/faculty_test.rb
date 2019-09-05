require 'test_helper'

class FacultyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  should validate_presence_of(:email)
  should validate_uniqueness_of(:email)
end
