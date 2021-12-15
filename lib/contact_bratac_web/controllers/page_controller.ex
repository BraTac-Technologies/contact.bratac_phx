defmodule ContactBratacWeb.PageController do
  use ContactBratacWeb, :controller

  def index(conn, _params) do
    put_flash(:info, "Welcome to Phoenix, from flash info!")
    render(conn, "index.html")
  end
end
