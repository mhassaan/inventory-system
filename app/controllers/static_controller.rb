class StaticController < ApplicationController
  skip_before_action :authorize_user
  skip_before_action :authenticate_user!

  layout false

  def index
    redirect_to dashboard_path(current_user.organization) if current_user
  end


end
