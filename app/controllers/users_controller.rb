class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index]

  def index
    @users = User.search(params[:search]).paginate(:page => params[:page], :per_page => 1)
  end

  def show
    @user = User.find(params[:id])
  end

end
