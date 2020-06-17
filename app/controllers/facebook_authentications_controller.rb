class FacebookAuthenticationsController < ApplicationController
  respond_to :json

  def fb_login
    user = User.find_or_create_with_facebook_access_token(facebook_access_token)

    if user.persisted?
      render json: user.to_json, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def facebook_access_token
    params.require(:facebook_access_token)
  end

end
