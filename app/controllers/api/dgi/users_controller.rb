module Api
  module Dgi
    class UsersController < Api::ApiController

      def index
        @users = User.all
      end

      def show
        # {"user"=>"[nombre, apellido]"
        @params_required = JSON.parse(params[:user])
        @user = User.find(params[:id])
      end

      def Select_for_use
        aux = params[:user].tr('[]','')
        aux = aux.tr(' ','')
        @params_required = aux.split(',').collect! {|n| n}
        @user = User.find_by(ci: params[:ci])
      end

      private

      def user_params
        params.require(:user).permit(
          :ci, :nombre, :apellido, :nombre_completo,
          :sexo, :nacionalidad, :tel
        )
      end
    end
  end
end
