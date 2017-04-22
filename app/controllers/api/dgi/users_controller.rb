module Api
  module Dgi
    class UsersController < Api::ApiController
      before_action :user, only: [:user_data]

      def index
        @users = User.all
      end

      def show
        # {"user"=>"[nombre, apellido]"
        @params_required = JSON.parse(params[:user])
        @user = User.find(params[:id])
      end

      def user_data
      end

      private

      def user_params
        params.require(:user).permit(
          :ci, :nombre, :apellido, :nombre_completo,
          :sexo, :nacionalidad, :tel
        )
      end

      def user
        @user = User.find_by(ci: params[:ci])
      end
    end
  end
end
