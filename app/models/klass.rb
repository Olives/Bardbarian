class Klass < ActiveRecord::Base

  has_and_belongs_to_many :skills
  has_many :levels

  scope :base_classes, where(:base_class => 1)
  scope :prestige_classes, where(:base_class => 0)

  def level_bab(lvl)
    return lvl if bab == 2
    bab == 1 ? (lvl*3)/4 : lvl/2
  end

  def level_ref(lvl)
    ref == 1 ? lvl/2 + 2 : lvl/3
  end

  def level_fort(lvl)
    fort == 1 ? lvl/2 + 2 : lvl/3
  end

  def level_will(lvl)
    will == 1 ? lvl/2 + 2 : lvl/3
  end

end
