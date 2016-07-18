ExUnit.start()
#Mix.Task.run "ecto.drop", ["quiet", "-r", "ElixirEctoTraining.Repo"]
#Mix.Task.run "ecto.create",["quiet", "-r", "ElixirEctoTraining.Repo"]
#Mix.Task.run "ecto.load", ["quiet", "-r", "ElixirEctoTraining.Repo"]
#Mix.Task.run "ecto.migrate", ["quiet", "-r", "ElixirEctoTraining.Repo"]
Ecto.Adapters.SQL.Sandbox.mode(ElixirEctoTraining.Repo, :manual)