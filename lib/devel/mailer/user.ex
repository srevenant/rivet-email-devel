defmodule Rivet.Email.Devel.Mailer.User do
  defstruct id: "", name: "", emails: []

  def preload(e, _), do: {:ok, e}
  def one(_), do: {:ok, mock()}

  def mock() do
    %__MODULE__{
      id: "BOGUS000-fB40-4EEF-B352-307C280604C1",
      name: "Doctor Who",
      emails: [Rivet.Email.Devel.Mailer.Email.mock()]
    }
  end
end
