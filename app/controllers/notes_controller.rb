class NotesController < ApplicationController
	
	# rescue_from ActiveRecord::RecordNotFound handled in ApplicationController.rb

	before_action :check_format, except: [:templates]

	layout false, only: [:templates]

	def index

		@notes = Note.all

		respond_to do |format|
			format.html #index.html
			format.json { render json: @notes.to_json({only: [:id, :title, :description]}) }
			format.xml { render xml: @notes.to_xml }
		end

	end

	def show
		@note = Note.find(params[:id])

		respond_to do |format|
			format.html #index.html
			format.json { render json: @note.to_json }
			format.xml { render xml: @notes.to_xml }
		end
	end

	def templates

		if(params[:name].blank?)
			render status: :not_found, nothing: true
		else 
			render template: "notes/templates/#{params[:name]}"
		end

	end

end
