Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '5233489c5f45e72b4a45', '06535a9ee0513e38efce7e9c79836e333c7583c2'
end