defmodule TeapotWeb.PageController do
  use TeapotWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
