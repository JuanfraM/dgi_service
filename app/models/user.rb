class User < ActiveRecord::Base

  validates :ci, uniqueness: true
  validates :ci, :nombre, :apellido, presence: true

  protected

end
