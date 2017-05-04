class BpsUser < ApplicationRecord
  has_many :bps_aportes
  validates :numero_documento, uniqueness: true
  validates :numero_documento, :tipo_documento, :nombre, :apellido, presence: true

  def aportes
    bps_aportes
  end
end
