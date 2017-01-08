defmodule Voorkanter.PageController do
  use Voorkanter.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
