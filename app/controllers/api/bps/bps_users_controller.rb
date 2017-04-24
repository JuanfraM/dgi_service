module Api
  module Bps
    class BpsUsersController < Api::ApiController
      before_action :user, only: :user_info

      def user_info
        @user.update!(nombre: "hola")
      end

      private

      def bps_user_params
        params.require(:bps_user).permit(
          :ci, :nombre, :apellido, :sexo,
          :nacionalidad
        )
      end

      def user
        @user = BpsUser.find_by(ci: params[:NumeroDocumento])
      end
    end
  end
end
