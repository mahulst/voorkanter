defmodule Voorkanter.PageControllerTest do
  use Voorkanter.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Your project"
  end
end
