class Level < ActiveRecord::Base

  belongs_to :klass
  has_and_belongs_to_many :abilities

  validates_uniqueness_of :rank, :scope => :klass_id

end
