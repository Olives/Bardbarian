class DmController < ApplicationController

  before_filter do
    @active_nav = "dm"
    @subnav = {
      "Classes" => {:action => :classes},
      "Spells" => "",
      "Feats" => "",
      "Races" => ""
    }
  end

  def index

  end

  def classes
    @active_subnav = :classes
  end

end
