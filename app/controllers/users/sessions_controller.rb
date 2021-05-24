# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  after_action :delete_expired_tokens, only: [:create, :destroy]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    super
    # delete_expired_tokens
  end

  # DELETE /resource/sign_out
  def destroy
    super
    # delete_expired_tokens
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private

  def respond_with(resource, _opts = {})
    render json: resource, status: :ok
  end

  def respond_to_on_destroy
    head :no_content
  # rescue JWT::VerificationError, JWT::DecodeError
  #   render json: { errors: ['Not Authenticated'] }, status: :unauthorized
  # rescue JWT::VerificationError
  #   render json: { errors: "e.message" }, status: :internal_server_error
  # rescue JWT::VerificationError => e
  #   render json: { errors: e.message }, status: :internal_server_error
  end

  def delete_expired_tokens
    resource.AllowlistedJwts.where('exp < :now', now: Time.now).destroy_all
  end
end
