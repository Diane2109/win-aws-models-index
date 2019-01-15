class PagesController < ApplicationController

  def index
    @users = User.all
    current_user
  end

  def startups
  end

  def investment
  end

  def contact
  end




end
