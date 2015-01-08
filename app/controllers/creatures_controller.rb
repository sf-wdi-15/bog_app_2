class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
    render :index
  end

  def new
    @creature = Creature.new
    render :new
  end

  def create
    newCreature = params.require(:creature).permit(:name, :description)
    creature = Creature.create(newCreature)
    redirect_to creature_path(creature.id)
  end

  def show
    @creature = Creature.find(params[:id])
    render :show
  end

  def edit 
    @creature = Creature.find(params[:id])
    render :edit
  end


  def update
    creature = Creature.find(params[:id])
    creature_params = params.require(:creature).permit(:name, :description)
    creature.update(creature_params)
    redirect_to creature_path(creature)
  end


  def destroy
    creature = Creature.find(params[:id])
    creature.destroy
    redirect_to creatures_path
  end

end
