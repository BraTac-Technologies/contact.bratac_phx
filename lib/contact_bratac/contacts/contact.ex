defmodule ContactBratac.Contacts.Contact do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contacts" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :message, :string
    field :phone, :string
    field :subject, :string

    timestamps()
  end

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, [:first_name, :last_name, :email, :phone, :subject, :message])
    |> validate_required([:first_name, :last_name, :email, :phone, :subject, :message])
  end
end
