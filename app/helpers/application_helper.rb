module ApplicationHelper
  def full_title title
    title.empty? ? t("app_title") : title + " | " + t("app_title")
  end

  def set_btn_provider provider
    provider = "google" if provider == :google_oauth2
    provider
  end
end
