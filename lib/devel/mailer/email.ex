defmodule Rivet.Email.Devel.Mailer.Email do
  defstruct id: "", address: "", user: %Rivet.Email.Devel.Mailer.User{}, verified: true

  def preload(e, _), do: {:ok, %{e | user: Rivet.Email.Devel.Mailer.User.mock()}}
  def one(_), do: {:ok, mock()}

  def mock() do
    %__MODULE__{
      id: "BOGUS001-fB40-4EEF-B352-307C280604C1",
      address: "who@example.com"
    }
  end
end
