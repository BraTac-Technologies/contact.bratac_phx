defmodule ContactBratacWeb.IndexLive do
  use ContactBratacWeb, :live_view

  alias ContactBratac.Repo
  alias ContactBratacWeb.PageView
  alias ContactBratac.Contacts
  alias ContactBratac.Contacts.Contact


  def render(assigns) do
   render PageView, "index.html", assigns
  end

  def mount(params, _, socket) do
    changeset = Contacts.change_contact(%Contact{})

    socket = assign(
        socket,
        changeset: changeset
      )

    {:ok, socket}
  end

  def handle_event("create_contact", %{"contact" => attrs}, socket) do


    case Contacts.create_contact(attrs) do
      {:ok, comment} ->

        changeset = Contacts.change_comment(%Contact{})
        socket = put_flash(socket, :success, "Contact sent successfully!")
        socket = assign(socket, changeset: changeset)

        {:noreply, socket}

      {:error, %Ecto.Changeset{} = changeset} ->

        socket = assign(socket, changeset: changeset)
        {:noreply, socket}
      end
  end

end
