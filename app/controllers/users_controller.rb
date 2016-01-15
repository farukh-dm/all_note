class UsersController < ApplicationController

	# rescue_from ActiveRecord::RecordNotFound handled in ApplicationController.rb

	before_action :check_format, except: [:templates]

	layout false, only: [:templates]

	def index
		@users = User.all
		
		respond_to do |format|
			format.html # index.html
			format.json { render json: @users.to_json({only: [:id, :name, :email, :bio]}) }
			format.xml { render xml: @users.to_xml }
		end

	end

	def show
		@users = User.find(params[:id])
		# ActiveRecord::RecordNotFound handled separately
		
		respond_to do |format|
			format.html # index.html
			format.json { render json: @user.to_json }
			format.html { render xml: @user.to_xml }
		end

	end

	def templates

		if(params[:name].blank?)
			render status: :not_found, nothing: true
		else 
			render template: "users/templates/#{params[:name]}"
		end

	end

end
