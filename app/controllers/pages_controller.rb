class PagesController < ApplicationController

  def index
    @users = User.all
    current_user
    @partners = Partner.all
  end

  def startups
    @partners = Partner.all
  end

  def investment
  end

  def contact
  end




end
