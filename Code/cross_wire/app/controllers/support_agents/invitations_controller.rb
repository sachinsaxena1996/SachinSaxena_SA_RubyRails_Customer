class SupportAgents::InvitationsController < Devise::InvitationsController
  private

  def update_resource_params
    devise_parameter_sanitizer.sanitize(:accept_invitation,:name,:employee_number)
  end

  def update
    resource.name = update_resource_params[:name]
    resource.employee_number = update_resource_params[:employee_number]
    resource.save
    super
  end
end