class UsersControllerController < ApplicationController
  def new
    @msg = params[:erreur]
  end

  def every_user
    if params['username'].to_i == 0
      @user = User.find_by(username: params['username'].capitalize)
    else
      @user = User.find_by(id: params['username'])
    end
  end

  def create
    user = User.new
    message = "Username invalid(deja pris ou comportant d'espace)"
    if !params["username"].match(/\s/)
      user.username = params["username"].capitalize
      user.bio = params["bio"]
      user.save
      validation = user.valid?
        if validation
          redirect_to "/user/#{user.id}"
        else 
        redirect_to "/creation/#{message}"
       end
    else
      redirect_to "/creation/#{message}"
    end
  end

  def list
    @list = User.all
  end

end
