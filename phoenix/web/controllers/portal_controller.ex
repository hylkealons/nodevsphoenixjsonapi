defmodule Test.TestController do
  use Test.Web, :controller

  def index(conn, _params) do
    json conn, %{message: "API string performance testing :)"}
  end
end
