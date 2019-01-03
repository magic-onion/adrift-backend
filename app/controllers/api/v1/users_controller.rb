module Api
  module V1
    class UsersController < ApplicationController

      def index
        render json: User.all
      end

      def show
        user = User.find(params[:id])

        user_json = {
          id: user.id,
          username: user.username,
          password: user.password,
          game: user.games[0],
        }
        render json: user_json
      end

      def create
        @user = User.create(user_params)

        render json: @user

      end

      def edit

      end

      def update

      end

      def destroy

      end

      private

      def user_params
        params.require(:user).permit(:username, :password)
      end





    end
  end
end
