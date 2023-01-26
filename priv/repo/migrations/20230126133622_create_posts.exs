defmodule RestApp.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :text
      add :likes, :integer
      add :dislikes, :integer

      timestamps()
    end
  end
end
