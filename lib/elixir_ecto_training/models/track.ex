defmodule ElixirEctoTraining.Track do
  use Ecto.Schema

  schema "tracks" do
    field :title, :string
    field :singer, :string
    timestamps([{:inserted_at,:created_at}])
  end

end
