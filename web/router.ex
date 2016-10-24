defmodule Rocket.Router do
  use Rocket.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/api", Rocket do
    pipe_through :api
    resources "session", SessionController, only: [:index]
  end
end
