class AuthController < ApplicationController
  before_filter :verify_callback_token, :only => :callback

  def index
  end

  def callback
    response = Yammer::OAuthLoginResponse.new(params[:code])
    byebug
    render plain: response.body
  end

  private

  def verify_callback_token
    unless params[:code] && params[:code].length > 5
      render :text => 'Invalid OAuth Callback Token', :status => :bad_request
    end
  end

end
