class GooglesController < ApplicationController
  def index
    url = 'https://accounts.google.com/o/oauth2/v2/auth?'
    amp = '&'
    client_id = 'client_id=421908420854-qpgncvpk5o3sinp4m8mqjfpuetnpfeit.apps.googleusercontent.com'
    nonce = 'nonce=random-value'
    response_type = 'response_type=permission id_token'
    redirect_uri = 'redirect_uri=http%3a%2f%2flocalhost:3000%2fgoogle_responce'
    scope = 'scope=email profile openid'
    state = 'state=1234567890'

    @response = HTTParty.get(url + client_id + amp + nonce + amp + response_type + amp + redirect_uri + amp + scope + amp + state)
    

    @google_resp = Google.all
    
    
    # binding.pry
  end

  def google_responce
    p params
    Google.create(field_1: params)
  end
end 
