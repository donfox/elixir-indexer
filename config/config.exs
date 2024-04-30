import Config

config :TendermintBlockProcessor, MyApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "indexer_lite",
  username: "donfox1",
  password: "xofnod",
  hostname: "localhost",
  port: 5432


