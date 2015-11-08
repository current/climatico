class ForecastsController < ApplicationController
  layout false

  def show
    @forecast = ForecastIO.forecast \
      params[:latitude],
      params[:longitude],
      params: { units: 'si' }

    @recomendation = Recomendation.for(@forecast)
    @currently = @forecast.currently
  end
end
