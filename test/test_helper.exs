ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Playlist.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Playlist.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Playlist.Repo)

