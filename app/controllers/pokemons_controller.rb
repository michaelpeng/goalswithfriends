class PokemonsController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end

  def damage
  	@pokemon = Pokemon.find(params[:id])
  	@pokemon.health -= 10
  	@pokemon.save
  	id = Trainer.find(@pokemon.trainer_id)
	@pokemon.destroy if @pokemon.health <= 0
  	redirect_to trainer_path(id)
  end

  def create
  	@pokemon = Pokemon.new(pokemon_params)
  	@pokemon.health = 100
  	@pokemon.level = 1
  	@pokemon.trainer_id = current_trainer.id
  	

  	if @pokemon.save
  		id = Trainer.find(@pokemon.trainer_id)
  		redirect_to trainer_path(id)
  	end
  	flash[:error] = @pokemon.errors.full_messages.to_sentence
  	render 'new'
  end

  private

  def pokemon_params
  	params.require(:pokemon).permit(:name)
  end
end
