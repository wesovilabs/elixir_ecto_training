defmodule ElixirEctoTrainingTest do
  alias ElixirEctoTraining.Track
  alias ElixirEctoTraining.Repo
  import Ecto.Query

  use ExUnit.Case, async: true

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Repo)
    Ecto.Adapters.SQL.Sandbox.mode(Repo, {:shared, self()})
  end

  test "track insertion" do
    previousNumberOfTracks = List.first Repo.all(from u in Track, select: count(u.id))
    Repo.insert! %Track{ title: "Runaway", singer: "John Bon Jovi" }
    numberOfTracks = List.first Repo.all(from u in Track, select: count(u.id))
    assert numberOfTracks == previousNumberOfTracks + 1
  end

end
