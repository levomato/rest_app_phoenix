defmodule RestApp.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :text
      add :post_id, references(:post, on_delete: :nothing)

      timestamps()
    end

    create index(:comments, [:post_id])
  end
end
