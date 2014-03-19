class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveModel::ForbiddenAttributesError, with: :bad_request
  rescue_from ActionController::UnpermittedParameters, with: :bad_request

   private

  def record_not_found
    render :text => "404 Not Found", :status => 404
  end

  def bad_request
    render :text => "400 Bad Request", :status => 400
  end
end
