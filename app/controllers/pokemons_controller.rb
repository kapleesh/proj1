class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to :root
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health = pokemon.health - 10
    @pokemon.save
    if @pokemon.health <= 0
      @pokemon.destroy
    end
    redirect_to "/trainers/" + current_trainer.id.to_s
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    name = params[:pokemon][:name]
    @pokemon = Pokemon.create(name: name, level: 1, health: 100, trainer_id: current_trainer.id)
    if !@pokemon.valid?
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to :back
    else
      redirect_to "/trainers/" + current_trainer.id.to_s
    end
  end

end
