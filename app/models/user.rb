class User < ActiveRecord::Base

  validates :numero_documento, uniqueness: true
  validates :numero_documento, :tipo_documento, :nombre, :apellido, presence: true

  protected

end
