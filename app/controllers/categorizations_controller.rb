class CategorizationsController < ApplicationController

  def new
    @categorization = Categorization.new
  end

  def create
    @categorization = Categorization.new(categorization_params)
    @categorization.kitten_id = params[:kitten_id]
    if @categorization.save
      redirect_to root_path
    else
      render :new
    end
  end

private

  def categorization_params
    params.require(:categorization).permit(:category_id)
  end

end
