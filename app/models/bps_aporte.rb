class BpsAporte < ApplicationRecord
  belongs_to :bps_user

  validates :sueldo, presence: true

  protected

end
