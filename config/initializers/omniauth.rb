Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,  Rails.application.secrets.omniauth_facebook_provider_key,Rails.application.secrets.omniauth_facebook_provider_secret
  provider :twitter, Rails.application.secrets.omniauth_twitter_provider_key,Rails.application.secrets.omniauth_twitter_provider_secret
end
