class YammerClient::User


  def self.convert_from_login_response(response)
    json = JSON.parse(response.body)
  end

end