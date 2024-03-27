class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include CanCan::ControllerAdditions

  # Load and authorize abilities
  before_action :load_and_authorize_resource

  respond_to :json

  rescue_from CanCan::AccessDenied do |exception|
    render json: { error: 'Access denied' }, status: :forbidden
  end

  private

  def load_and_authorize_resource
    @current_ability ||= Ability.new(current_user)
    authorize! action_name.to_sym, controller_name.to_sym
  end
end
