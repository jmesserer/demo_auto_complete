# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ac_states_session',
  :secret      => '05eb34101456a96ef790a38ace0fec2c15b656fd3be8686b66e02a18c390e61e578580f7654f6404d56135b917ed952e7815c14a4983cb86b40f3f52035e6c78'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
