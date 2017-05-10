module Api
  module Dgi
    class UsersController < Api::ApiController
      before_action :user, only: [:user_data]

      def index
        @users = User.all
      end

      def show
        @params_required = JSON.parse(params[:user])
        @user = User.find(params[:id])
      end

      def user_data
      end

      private

      def user_params
        params.require(:user).permit(
          :numero_documento, :tipo_documento, :nombre, :apellido, :nombre_completo,
          :sexo, :nacionalidad, :tel, :email
        )
      end

      def user
        @user = User.find_by(numero_documento: params[:numero_documento])
      end
    end
  end
end
