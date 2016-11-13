defmodule Rocket.AuthErrorHandler do
 use Rocket.Web, :controller

 def unauthenticated(conn, params) do
  conn
   |> put_status(401)
   |> render(Rocket.ErrorView, "401.json")
 end

 def unauthorized(conn, params) do
  conn
   |> put_status(403)
   |> render(Rocket.ErrorView, "403.json")
 end
end
