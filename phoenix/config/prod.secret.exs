use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :portal, Test.Endpoint,
  secret_key_base: "tR9rp/085bJ9nFNiJ0ryALHwgNhNPkNGfD7CSecPm6RIuSZrvHUXXWWFE7+97ed5"

# Configure your database
config :portal, Test.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "portal_prod",
  pool_size: 20
