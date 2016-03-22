# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Playlist.Repo.insert!(%Playlist.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Playlist.Repo
alias Playlist.Player

Repo.delete_all Player

Repo.insert! %Player {
  playername: "MS Dhoni",
  playerteam: "India"
}
