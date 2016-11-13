defmodule Rocket.UserController do
  use Rocket.Web, :controller

  alias Rocket.User
  
  plug Guardian.Plug.EnsureAuthenticated, handler: Peepchat.AuthErrorHandler

  def current(conn, _) do
    user = conn
    |> Guardian.Plug.current_resource

    conn
    |> render(Rocket.UserView, "show.json", user: user)
  end
end
