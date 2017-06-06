# == Schema Information
#
# Table name: enrich_users
#
#  id         :integer          not null, primary key
#  pais       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class EnrichUser < ApplicationRecord
  belongs_to :user
end
