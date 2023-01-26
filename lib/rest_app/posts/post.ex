defmodule RestApp.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :content, :string
    field :dislikes, :integer
    field :likes, :integer
    field :title, :string
    has_many :comments, RestApp.Comments.Comment

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :likes, :dislikes])
    |> validate_required([:title, :content, :likes, :dislikes])
  end
end
