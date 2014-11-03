class SessionsController < ApplicationController
  def create
    # signs a user in
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )

    if @user.nil?
      # no user with the given name!
      flash[:errors] = ["Invalid Credentials"]
      redirect_to root_url
    else
      # sign the user in
      log_in!(@user)
      redirect_to user_url
    end
  end

  def destroy
    # sign a user out
    log_out!
    redirect_to root_url
  end

  def new
    # presents a login form
    render :new
  end
end