module Api
  module V1
    class TasksController < ApplicationController
      def index
	      render json: 'Hello Rails'
      end
    end
  end
end