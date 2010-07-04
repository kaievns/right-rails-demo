# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_right-rails-demo_session',
  :secret      => '3f5e546fd872e2dc8039a5d97bd2d0d7c85c5acc9e381034a4af9c6a758d897557933435bc44e09cd4fdd167479f58ddadbbed614d2d25fe641cb0eb490565a8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
