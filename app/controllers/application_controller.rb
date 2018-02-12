class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :authorize_user

  def current_organization
    @organization ||= Organization.find_by(short_name: params[:organization_id])
  end

  helper_method :current_organization

  # override Rails' default_url_options to ensure organization_id is added to
  # each URL generated
  # def default_url_options(options = {})
  #   options
  #   # if current_organization.present? && !options.has_key?(:organization_id)
  #   #   options[:organization_id] = current_organization.to_param
  #   # elsif current_user && !current_user.is_superadmin? && current_user.organization.present?
  #   #   options[:organization_id] = current_user.organization.to_param
  #   # end
  #   # options
  # end

  def authorize_user
    verboten! unless (params[:controller].include?("devise") || current_organization.id == current_user.organization_id)
  end

  def verboten!
    respond_to do |format|
      format.html { redirect_to dashboard_path, alert: "Access Denied." }
      format.json { render body: nil, status: 403 }
    end
  end

end
