class ForecastsController < ApplicationController
  def show
    @forecast = ForecastIO.forecast \
      params[:latitude],
      params[:longitude],
      params: { units: 'si' }

    @currently = @forecast.currently
  end
end
