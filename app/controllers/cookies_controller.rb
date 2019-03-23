class CookiesController < ApplicationController
  def index
    @cookies = cookies.each
  end
end
