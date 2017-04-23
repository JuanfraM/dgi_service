class BpsUser < ApplicationRecord
  has_many :bps_aportes
  validates :ci, uniqueness: true
  validates :ci, :nombre, :apellido, presence: true

  def aportes
    bps_aportes
  end
end
