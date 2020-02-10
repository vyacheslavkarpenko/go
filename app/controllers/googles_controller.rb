class GooglesController < ApplicationController
  def index
    url = 'https://accounts.google.com/o/oauth2/v2/auth?'
    amp = '&'
    client_id = 'client_id=421908420854-qpgncvpk5o3sinp4m8mqjfpuetnpfeit.apps.googleusercontent.com'
    nonce = 'nonce=random-value'
    response_type = 'response_type=permission id_token'
    redirect_uri = 'redirect_uri=http%3a%2f%2flocalhost:3000'
    scope = 'scope=email profile openid'
    state = 'state=1234567890'
    h = { a: "a", b: "b", c: "c" }
    h[:a]

    @response = HTTParty.get(url + client_id + amp + nonce + amp + response_type + amp + redirect_uri + amp + scope + amp + state)

    Google.create(field_1: params)

    @google_resp = Google.all
    
    render json: {response: @google_resp}
  end

  def google_responce
    @google_resp = Google.all
    render json: {response: @google_resp}
  end

  def flush_records
    del = Google.all.each{|i| i.destroy}
    render json: {response: del }
  end
end
