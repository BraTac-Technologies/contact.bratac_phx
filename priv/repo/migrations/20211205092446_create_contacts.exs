defmodule ContactBratac.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :phone, :string
      add :subject, :string
      add :message, :string

      timestamps()
    end
  end
end
