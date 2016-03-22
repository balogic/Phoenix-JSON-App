defmodule Playlist.PlayerTest do
  use Playlist.ModelCase

  alias Playlist.Player

  @valid_attrs %{playername: "some content", playerteam: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Player.changeset(%Player{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Player.changeset(%Player{}, @invalid_attrs)
    refute changeset.valid?
  end
end
