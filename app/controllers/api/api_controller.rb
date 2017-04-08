module Api
  class ApiController < ApplicationController

    respond_to :json
    layout false

    # Returns the API status
    def status
      render json: { online: true }
    end
  end
end
