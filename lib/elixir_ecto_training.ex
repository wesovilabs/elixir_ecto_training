defmodule ElixirEctoTraining do
use Application

   def start(_type, _args) do
       import Supervisor.Spec, warn: false

       children = [
         worker(ElixirEctoTraining.Repo, [])
       ]

       opts = [strategy: :one_for_one, name: ElixirEctoTraining.Supervisor]
       Supervisor.start_link(children, opts)
     end

end
