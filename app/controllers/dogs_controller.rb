class DogsController < ApplicationController
  def index
  end

  def fetch_breed
    breed = params[:dog_breed].downcase
    @dog_data = DogApiService.fetch_breed(breed)
    respond_to do |format|
      format.js
    end
  end
end
