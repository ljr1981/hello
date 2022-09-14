defmodule Hello.ContentFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello.Content` context.
  """

  @doc """
  Generate a quotation.
  """
  def quotation_fixture(attrs \\ %{}) do
    {:ok, quotation} =
      attrs
      |> Enum.into(%{
        author: "some author",
        text: "some text"
      })
      |> Hello.Content.create_quotation()

    quotation
  end
end
