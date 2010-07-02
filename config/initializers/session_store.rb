# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_witcms_session',
  :secret      => 'c9b5d829a46bb257ae8088c7cca5f63c64316b197f96cafb6ef16c39e9be84c597cf706d05e816b51aafe77b2d732d89f0f3545cc7e22d9dcf189017e8dd747d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
