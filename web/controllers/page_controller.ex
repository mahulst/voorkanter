defmodule Voorkanter.PageController do
  use Voorkanter.Web, :controller
  alias Voorkanter.Timeline
  alias Voorkanter.Repo

  def index(conn, _params) do
    timeline = Timeline |> Repo.all
    render(conn, "index.html", timeline: timeline)
  end
end
