defmodule Playlist.Repo.Migrations.CreatePlayer do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :playername, :string
      add :playerteam, :string

      timestamps
    end

  end
end
