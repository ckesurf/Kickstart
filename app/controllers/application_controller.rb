class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :my_custom_method
  def my_custom_method
    render json: {errors: 'whatever the heck i want to put here' }, status: 500
  end
end
