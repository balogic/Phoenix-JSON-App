defmodule Playlist.PlayerView do
  use Playlist.Web, :view

  def render("index.json", %{players: players}) do
    %{data: render_many(players, Playlist.PlayerView, "player.json")}
  end

  def render("show.json", %{player: player}) do
    %{data: render_one(player, Playlist.PlayerView, "player.json")}
  end

  def render("player.json", %{player: player}) do
    %{id: player.id,
      playername: player.playername,
      playerteam: player.playerteam}
  end
end
