defmodule Api.DirectoryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Api.Directory` context.
  """

  @doc """
  Generate a business.
  """
  def business_fixture(attrs \\ %{}) do
    {:ok, business} =
      attrs
      |> Enum.into(%{
        description: "some description",
        name: "some name",
        tag: "some tag"
      })
      |> Api.Directory.create_business()

    business
  end
end
