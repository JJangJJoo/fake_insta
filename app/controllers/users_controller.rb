class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def signup

  end

  def register
    #signup에서 날아온 data를 저장한다
    User.create(
      :email => params[:email],
      :password => params[:password]
    )
    redirect_to '/users'
  end

  def list
    @users = User.all
  end
end
