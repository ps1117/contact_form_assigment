class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_locale
 
  private
  def set_locale
    @browser_locale = http_accept_language.compatible_language_from(["en", "hi", "fr"])
    unless params[:locale].blank?
      I18n.locale = ["en", "hi", "fr"].include?(params[:locale]) ? params[:locale] : "en"
    else
      I18n.locale = @browser_locale
    end
  end
end
