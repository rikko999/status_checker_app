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

class Site < ApplicationRecord
  after_update :send_email, if: :saved_change_to_last_state?

  def check_state
    response = HTTParty.get(url)
    update(last_state: response.code, message: response.message)
  end

  private

  def send_email
    CheckerMailer.monitoring(self).deliver
  end
end
