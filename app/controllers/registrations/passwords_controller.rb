class Registrations::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  def create
    if verify_recaptcha
      super
    else
      redirect_to new_user_password_path, notice: "There was an error with the recaptcha below. Please try again."
    end
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  def update
    if verify_recaptcha
      super
    else
      redirect_to new_user_password_path, notice: "There was an error with the recaptcha below. Please try again."
    end
  end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
