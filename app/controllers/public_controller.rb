# frozen_string_literal: true
#
class PublicController < ActionController::API
  include Secured
  # This route doesn't need authentication
  def public
    render json: { message: "Hello from a public endpoint! You don't need to be authenticated to see this." }
  end

  def private
    render json: { message: 'Hello from a private endpoint! You need to be authenticated to see this.'}
  end

  def private_scoped
    render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
  end
end
