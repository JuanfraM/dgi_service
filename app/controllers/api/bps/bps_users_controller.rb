module Api
  module Bps
    class BpsUsersController < Api::ApiController
      before_action :user, only: :user_info

      def user_info
      end

      private

      def bps_user_params
        params.require(:bps_user).permit(
          :numero_documento, :tipo_documento, :nombre, :apellido, :sexo,
          :nacionalidad, :email
        )
      end

      def user
        @user = BpsUser.find_by(numero_documento: params[:NumeroDocumento])
      end
    end
  end
end
