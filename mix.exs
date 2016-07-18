defmodule ElixirEctoTraining.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_ecto_training,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     aliases: aliases]
  end

  def application do
    [
        applications: [:logger, :postgrex, :ecto],
        mod: {ElixirEctoTraining,[]}
    ]
  end

  defp deps do
    [
     {:postgrex, ">= 0.0.0"},
     {:ecto, "~> 2.0.2"}
    ]
  end

  defp aliases do
      [
        "ecto.rebuild": [
            "ecto.drop", "ecto.create",  "ecto.load", "ecto.migrate", "test"
        ],
        "test": [
            "ecto.rebuild"
        ]
      ]
    end
end
