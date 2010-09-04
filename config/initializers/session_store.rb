# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_right-gallery_session',
  :secret      => '8ae7b4ca3a2fdcc95d148d3399b90c4a45e56fc47ec5aaa0f5442e60703fec17ae12b18ecc58958bd435e8ecac0ac137684f9d7e0f105954dfab4e9504fa1a4b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
