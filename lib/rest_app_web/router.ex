defmodule RestAppWeb.Router do
  use RestAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RestAppWeb do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit] do
      resources "/comments", CommentController, except: [:new, :edit]
    end
  end
end
