defmodule LeagueEx.Client.Config do
  @br_endpoint "br1.api.riotgames.com"
  @eune_endpoint "eun1.api.riotgames.com"
  @euw_endpoint "euw1.api.riotgames.com"
  @jp_endpoint "jp1.api.riotgames.com"
  @kr_endpoint "kr.api.riotgames.com"
  @las_1_endpoint "la1.api.riotgames.com"
  @las_2_endpoint "la2.api.riotgames.com"
  @na_endpoint "na1.api.riotgames.com"
  @oce_endpoint "oc1.api.riotgames.com"
  @tr_endpoint "tr1.api.riotgames.com"
  @ru_endpoint "ru.api.riotgames.com"
  def get_endpoint(opts) do
    "https://#{match_region(opts)}"
  end

  defp match_region(opts) do
    case Keyword.get(opts, :endpoint, "BR") do
      "BR" -> @br_endpoint
      "EUNE" -> @eune_endpoint
      "EUW" -> @euw_endpoint
      "JP" -> @jp_endpoint
      "KR" -> @kr_endpoint
      "LAS_1" -> @las_1_endpoint
      "LAS_2" -> @las_2_endpoint
      "NA" -> @na_endpoint
      "OCE" -> @oce_endpoint
      "TR" -> @tr_endpoint
      "RU" -> @ru_endpoint
      _ -> @br_endpoint
    end
  end
end
