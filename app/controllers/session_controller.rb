class SessionController < ApplicationController
  # Login form
  def new
  end

  # Where the login form POSTs data
  def create
    @current_user = User.where(:name => params[:username]).first
    if @current_user.present? && @current_user.authenticate(params[:password])
      session[:user_id] = @current_user.id
      redirect_to root_path
    else
      @errors = 'Invalid username or password'
      render :new
      # redirect_to login_path
    # nav += "#{link_to('Sign In', login_path, :data => {:confirm => 'Are you sure?'})}"
    end
  end

  # Logout
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end