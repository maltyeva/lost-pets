class PetsController < ApplicationController
  def new
    # blank form with the empty instance of Model
    @pet = Pet.new
  end

  def create
    #filled out form, but not saved yet
    @pet = Pet.new(pet_params)
    #save the form
    @pet.save
    #redirect, because no front-end for create page
    redirect_to pets_path
  end

  # def edit
  # end

  def update
    #find the pet
    @pet = Pet.find(params[:id])
    # update the pet
    @pet.update(found: true)
    # @pet.found = true
    # @pet.save
    redirect_to pets_path
  end

  def index
    @pets = Pet.all.where(found: false)
  end

  private

  def pet_params
    # params[:pet]
    params.require(:pet).permit(:found_on, :species, :location, :description)
  end
end
