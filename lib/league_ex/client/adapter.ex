defmodule LeagueEx.Client.Adapter do
  @moduledoc """
  Modules responsible for Braspag wrapper function definitions
  """

  @type result :: {:ok, any} | {:error, any}

  @callback get_summoner_by_name(binary(), keyword()) :: result

  @spec adapter :: module()
  defp adapter do
    Application.get_env(:league_improvement, LeagueEx)
    |> Keyword.get(:adapter)
  end

  @spec get_summoner_by_name(binary(), keyword()) :: result
  def get_summoner_by_name(name, opts) do
    adapter().get_summoner_by_name(name, opts)
  end
end
