# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  total      :float            default(0.0)
#  created_at :datetime
#  updated_at :datetime
#

class Bank < ActiveRecord::Base
  belongs_to :user, inverse_of: :bank
  has_many :transactions, inverse_of: :bank
end
