class RegistrationsController < Devise::RegistrationsController
  def resend_confirmation
    self.resource = resource_class.new
  end
  
  protected

  def after_inactive_sign_up_path_for(resource)
    '/confirm'
  end
end