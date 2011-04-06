class Ability < ActiveRecord::Base

  belongs_to :level
  has_many :tiers

end
