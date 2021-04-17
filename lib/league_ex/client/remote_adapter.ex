defmodule LeagueEx.Client.RemoteAdapter do
  @moduledoc false

  use Tesla
  alias LeagueEx.Client.Config
  plug Tesla.Middleware.JSON
  adapter(Tesla.Adapter.Hackney)

  @behaviour LeagueEx.Client.Adapter

  @impl true
  def get_summoner_by_name(name, opts \\ []) do
    base_url = Config.get_endpoint(opts)

    get("#{base_url}/lol/summoner/v4/summoners/by-name/#{name}",
      headers: [{"X-Riot-Token", ""}]
    )
  end
end
