class CookiesController < ApplicationController
  def index
    headers['Set-Cookie'] = set_cookies
    @cookie_headers = headers['Set-Cookie']
    @cookies = cookies
    @raw_cookies = request.headers['Cookie']
  end

  private

  def set_cookies
    return [] unless params[:cookies]
    params[:cookies].split("\n").map(&:strip)
  end
end
