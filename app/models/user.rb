# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  numero_documento :integer
#  tipo_documento   :string
#  nombre           :string
#  apellido         :string
#  nombre_completo  :string
#  sexo             :string
#  email            :string
#  nacionalidad     :string
#  tel              :string
#  direccion        :string
#  residente        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ActiveRecord::Base

  validates :numero_documento, uniqueness: true
  validates :numero_documento, :tipo_documento, :nombre, :apellido, presence: true
  has_one :enrich_user

  protected

end
