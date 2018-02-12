class DashboardController < ApplicationController
  respond_to :html, :js
  def index
    @organization = current_organization
  end
end
