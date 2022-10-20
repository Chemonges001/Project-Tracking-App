class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # rescure_from ActiveRecord::RecordNotFound,
    def create 
        users = User.create(user_params)
        render json: users, status: :created
    end

    def index
    user= User.all
    render json: user, status: :ok
    end

    def show
    user= User.find(params[:id])
    render json: user, include: :projects, status: :ok
    end

    def get_user
        user=User.find_by(signup_id: session[:signup_id])
        render json:user, status: :ok
    end


    private 
    
    def user_params
    params.permit(:first_name, :last_name, :email, :role, :pasword_digest)
    end
 
    def render_not_found_response
     render json: { error: "User not found"}, status: :not_found
    end

  

end
