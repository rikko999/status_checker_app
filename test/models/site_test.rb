# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  title      :string
#  last_state :integer
#  url        :string
#  message    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
