# == Schema Information
#
# Table name: bps_users
#
#  id               :integer          not null, primary key
#  numero_documento :integer
#  tipo_documento   :string
#  nombre           :string
#  apellido         :string
#  sexo             :string
#  email            :string
#  nacionalidad     :string
#  ano_de_alta      :string
#  afap             :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class BpsUser < ApplicationRecord
  has_many :bps_aportes
  validates :numero_documento, uniqueness: true
  validates :numero_documento, :tipo_documento, :nombre, :apellido, presence: true

  def aportes
    bps_aportes
  end
end
