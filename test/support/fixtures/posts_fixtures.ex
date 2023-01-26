defmodule RestApp.PostsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `RestApp.Posts` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        content: "some content",
        dislikes: 42,
        likes: 42,
        title: "some title"
      })
      |> RestApp.Posts.create_post()

    post
  end
end
