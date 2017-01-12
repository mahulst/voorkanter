defmodule Voorkanter.Repo.Migrations.AddTimesTimeline do
  use Ecto.Migration

  def change do
    alter table(:timeline) do
       add :start, :utc_datetime
       add :end, :utc_datetime
    end
  end
end
