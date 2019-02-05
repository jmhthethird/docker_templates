use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :test_app, TestAppWeb.Endpoint,
  secret_key_base: "woRy8WpM1fO7/y8qB+QWiUKW0YYp1R/6mAEO6cxTUssWXZfnEqQtubz7btloSLoT"

# Configure your database
config :test_app, TestApp.Repo,
  username: "postgres",
  password: "postgres",
  database: "test_app_prod",
  pool_size: 15
