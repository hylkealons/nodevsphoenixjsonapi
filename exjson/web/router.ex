defmodule Exjson.Router do
  use Exjson.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Exjson do
    pipe_through :api

    resources "/", ApiController
  end
end
