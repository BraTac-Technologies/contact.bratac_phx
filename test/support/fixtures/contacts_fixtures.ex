defmodule ContactBratac.ContactsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ContactBratac.Contacts` context.
  """

  @doc """
  Generate a contact.
  """
  def contact_fixture(attrs \\ %{}) do
    {:ok, contact} =
      attrs
      |> Enum.into(%{
        email: "some email",
        first_name: "some first_name",
        last_name: "some last_name",
        message: "some message",
        phone: "some phone",
        subject: "some subject"
      })
      |> ContactBratac.Contacts.create_contact()

    contact
  end
end
