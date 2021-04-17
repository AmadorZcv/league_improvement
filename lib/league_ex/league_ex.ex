defmodule LeagueEx do
  alias LeagueEx.Client.Adapter
  @spec get_summoner_by_name(any, keyword) :: {:error, any} | {:ok, any}
  def get_summoner_by_name(name, opts \\ []) do
    Adapter.get_summoner_by_name(name, opts)
  end
end
