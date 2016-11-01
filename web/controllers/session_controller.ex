defmodule Rocket.SessionController do
  use Rocket.Web, :controller

  def index(conn, _params) do
    conn
    |> json(%{status: "Ok, Now we are cooking with oil!"})
  end
end
