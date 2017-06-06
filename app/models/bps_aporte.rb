# == Schema Information
#
# Table name: bps_aportes
#
#  id          :integer          not null, primary key
#  sueldo      :integer
#  jubilacion  :integer
#  fonasa      :integer
#  bps_user_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class BpsAporte < ApplicationRecord
  belongs_to :bps_user

  validates :sueldo, presence: true

  protected

end
