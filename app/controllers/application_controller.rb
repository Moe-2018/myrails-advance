class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  include Pundit
  allow_browser versions: :modern

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  #以下生成AI参照
  private
  def user_not_authorized
    flash[:alert] = "権限がありません"
    redirect_back(fallback_location: root_path)
  end
end
