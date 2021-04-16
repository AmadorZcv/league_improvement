defmodule LeagueImprovement.Repo do
  use Ecto.Repo,
    otp_app: :league_improvement,
    adapter: Ecto.Adapters.Postgres
end
