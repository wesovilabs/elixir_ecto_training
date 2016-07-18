use Mix.Config

config :elixir_ecto_training,
    ecto_repos: [ ElixirEctoTraining.Repo ]

config :logger, :console, format: "[$level] $message\n"

import_config "#{Mix.env}.exs"