class GeocodesController < ApplicationController
  def show
    @geocode = Geocode.new(params[:address])

    respond_to do |format|
      format.json { render json: @geocode.json_hash }
    end
  end
end
