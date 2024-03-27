class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  before_action :set_current_ability

  respond_to :json

  rescue_from CanCan::AccessDenied do |exception|
    render json: { error: 'Access denied' }, status: :forbidden
  end

  private

  def set_current_ability
    @current_ability ||= Ability.new(current_user)
  end
end
