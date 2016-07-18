use Mix.Config

config :elixir_ecto_training, ElixirEctoTraining.Repo,
      adapter: Ecto.Adapters.Postgres,
      database: "elixir_ecto_training_db",
      username: "wesovi",
      password: "wesoviPass",
      hostname: "localhost",
      port: 3001
