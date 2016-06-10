Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  Rails.application.secrets.omniauth_facebook_provider_key,Rails.application.secrets.omniauth_facebook_provider_secret
  provider :twitter, Rails.application.secrets.omniauth_twitter_provider_key,Rails.application.secrets.omniauth_twitter_provider_secret
  provider :google_oauth2, Rails.application.secrets.omniauth_google_provider_key,Rails.application.secrets.omniauth_google_provider_secret

  OmniAuth.config.full_host = Rails.env.production? ? 'http://miedificio.herokuapp.com' : 'http://localhost:3000'

end
