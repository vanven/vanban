OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "78273633869.apps.googleusercontent.com", "UWnLZGQtKTRNsM3-jcEEpAGh"
end