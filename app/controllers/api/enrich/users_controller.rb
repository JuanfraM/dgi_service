module Api
  module Enrich
    class UsersController < Api::ApiController
      before_action :enrich, only: :user_info

      def user_info
        @enrich = EnrichUser.find_by(user_id: @user.id)
      end

      private

      def enrich
        @user = User.find_by(numero_documento: params[:id])
      end
    end
  end
end
