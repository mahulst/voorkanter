defmodule Voorkanter.Timeline do
  use Voorkanter.Web, :model

  schema "timeline" do
    field :job_title
    field :company
    field :location
    field :description
    field :start, :utc_datetime
    field :end, :utc_datetime

    timestamps
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:job_title, :company, :location, :description, :start, :end])
    |> validate_required([:job_title, :company, :location, :description, :start])
  end
end