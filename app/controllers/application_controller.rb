class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound, with: :handle_record_not_found

  rescue_from ActionView::MissingTemplate do |exception|
    # use exception.path to extract the path information
    # This does not work for partials
    redirect_to '/404'
  end

  private

  def check_format
  	
  	params[:format] ||= 'html'

  	unless(['html', 'json', 'xml'].include?(params[:format]))
  		render text: 'only HTML, XML, and JSON format are supported at the moment.' and return false
  	end

  end

  def handle_record_not_found(error)
		render status: :not_found, nothing: true
	end

end
