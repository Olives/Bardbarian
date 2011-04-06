class ClassesController < ApplicationController

  before_filter :load_klass

  def index
    @base_classes = Klass.base_classes
    @prestige_classes = Klass.prestige_classes
  end

  def show
    @levels = @klass.levels
  end

  def new

  end

  def create

  end

  def edit
    @levels = @klass.levels
  end

  def update
    @klass.update_attributes(params[:klass])
    redirect_to :action => :edit, :id => @klass.id
  end

  def destroy

  end

  def add_level
    @level = Level.new(:rank => @klass.levels.count+1 )
    @klass.levels << @level
  end

  private
  def load_klass
    if params[:id]
      @klass = Klass.find(params[:id])
    end
  end

end
