defmodule HypevestWeb.PageController do
  use HypevestWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
