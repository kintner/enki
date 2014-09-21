class YammerClient::OauthLoginResponse
  def initialize(response)
    @response = yammer_ client.access_token_from_authorization_code(params[:code], { :redirect_uri => 'https://localhost/callback'})
    if response.code != '200'
      raise "handle this: #{response.body}"
    else
      Yammer::User.convert_from_login_response(response)
    end
  end

  def

end