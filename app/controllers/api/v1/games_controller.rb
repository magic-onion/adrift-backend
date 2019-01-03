module Api
  module V1
    class GamesController < ApplicationController

      def index
        render json: Game.all
      end

      def show
        game = Game.find(params[:id])

        game_json = {
          id: game.id,
          event: game.event,
          user_id: game.user_id
        }
        render json: game_json
      end

      def create
        @game = Game.create(game_params)

        render json: @game

      end

      def edit

      end

      def update
        @game = Game.find_by(user_id: params[:user_id])
        @game.update(game_params)
        render json: @game

      end

      def destroy

      end

      private

      def game_params
        params.require(:game).permit(:user_id, :event)
      end





    end
  end
end
