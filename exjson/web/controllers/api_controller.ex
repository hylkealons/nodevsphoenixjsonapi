defmodule Exjson.ApiController do
    use Exjson.Web, :controller

  def index(conn, _params) do
    json conn, %{message: "API string performance testing :)"}
  end
end
