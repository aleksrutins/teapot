defmodule TeapotWeb.DesignController do
  use TeapotWeb, :controller

  def library(conn, _params) do
    render(conn, "library.html")
  end
end
