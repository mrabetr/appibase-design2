class ApplicationController < ActionController::API
  # something to do with what formats are acceptable if Content-Type: 'application/json' is not specified in the request?
  respond_to :json

  # rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  # rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique
  # rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  # rescue_from JWT::VerificationError, with: :verification_error

  # private

  # def record_invalid(exception)
  #   render json: { errors: exception.record.errors }, status: :unprocessable_entity
  # end

  # def record_not_unique(exception)
  #   render json: { errors: exception.message }, status: :unprocessable_entity
  # end

  # def record_not_found(exception)
  #   render json: { errors: exception.message }, status: :not_found
  # end

  # def verification_error(exception)
  #   render json: { errors: exception.message }, status: :internal_server_error
  # end
end
