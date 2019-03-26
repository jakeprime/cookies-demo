class CookiesController < ApplicationController
  def index
    @cookie_headers = headers['Set-Cookie']
    @cookies = cookies.each
    @raw_cookies = request.headers['Cookie']
  end
end
