module YammerClient
  require_dependency 'yammer_client/user'
  require_dependency 'yammer_client/oauth_login_response'

  def client
    @client ||= Yammer::OAuth2Client.new(ENV.fetch('YAMMER_OAUTH_CLIENT_ID'), ENV.fetch('YAMMER_OAUTH_CLIENT_SECRET'))
  end
end