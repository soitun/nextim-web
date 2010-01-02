# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_nextim-web_session',
  :secret      => '22e890a79980d4b81719793974926c33126d4619afde8c6bece4c66d8ba29fa9797c15293ad8647f2fa1ecc90b32fc1a9fb22a86bc00f5bba03dab15af1ad521'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
