defmodule ChatAmdx.PageController do
  use ChatAmdx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
