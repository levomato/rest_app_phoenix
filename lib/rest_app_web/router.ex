defmodule RestAppWeb.Router do
  use RestAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RestAppWeb do
    pipe_through :api
  end
end
