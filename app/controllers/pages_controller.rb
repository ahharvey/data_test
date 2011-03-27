class PagesController < ApplicationController
  def home
    @title = "Home"
    @logs = Log.paginate(:page => params[:page])
    @log = Log.new
    @sites = Site.find(:all)
    @taxas = Taxa.find(:all)
    @users = User.find(:all)
    @parent_page = "Home"
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

end
