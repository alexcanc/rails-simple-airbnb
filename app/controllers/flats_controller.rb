class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = Flat.where("name LIKE ?", "%#{params[:query]}%")
      @results_count = @flats.count
    else
      @flats = Flat.all
      @results_count = nil
    end
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path # Redirects to the show page of the newly created flat.
    else
      render :new # Renders the new form again if there are any validation errors.
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, notice: 'Flat was successfully deleted.'
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
