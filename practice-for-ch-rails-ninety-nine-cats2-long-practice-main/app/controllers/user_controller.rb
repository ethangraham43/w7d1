class UserController < ApplicationController
    def new
    end

    def show
        @user = User.find_by(id: params[:id])

    end

    def create
        @user = User.new(params[:username, :password])
        if @user.save
            # login(@user)
            redirect_to cats_url
        else
            render json: @user.errors.full_messages, status: 422
        end
    end
end
