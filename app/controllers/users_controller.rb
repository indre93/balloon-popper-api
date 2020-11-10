class UsersController < ApplicationController

  def index
    users = User.all
    render jason: users, status: 200
  end

end
