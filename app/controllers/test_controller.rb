class TestController < ApplicationController
  def hello
    @what = params[:what] || current_user.email
  end
end