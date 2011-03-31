class DmController < ApplicationController

  before_filter do
    @active_nav = "dm"
    @subnav = {
      "Classes" => "",
      "Spells" => "",
      "Feats" => "",
      "Races" => ""
    }
  end



  def index

  end

end
