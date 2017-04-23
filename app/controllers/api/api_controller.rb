module Api
  class ApiController < ApplicationController
    respond_to :json
    layout false

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid,  with: :record_not_found

    # Returns the API status
    def status
      render json: { online: true }
    end

    def record_not_found
      render json: { error: 'Not found record' }, status: 404
    end
  end
end
