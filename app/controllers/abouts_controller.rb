class AboutsController < ApplicationController
  before_action :set_about, only: %i[ show]

  def show
  end

end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = abouts
    end

    # Only allow a list of trusted parameters through.
    def about_params
      params.require(:about).permit(:title, :content)
    end
