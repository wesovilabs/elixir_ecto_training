defmodule ElixirEctoTraining.Repo.Migrations.AddColumnSingerToTableTracks do
  use Ecto.Migration

  def change do
    alter table(:tracks) do
        add :singer, :string
    end
  end
end
