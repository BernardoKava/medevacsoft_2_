class StaticPagesController < ApplicationController

  def home
    # users are redirected to the dashboard upon login.
    if current_user
      redirect_to dashboard_index_url
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end


