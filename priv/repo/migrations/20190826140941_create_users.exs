defmodule PhxPow.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string, null: false
      add :password_hash, :string

      timestamps()

      add :role, :string, default: "user"

      add :date_of_birth, :date
    end

    create unique_index(:users, [:email])
  end
end
