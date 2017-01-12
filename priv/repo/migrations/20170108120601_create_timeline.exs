defmodule Voorkanter.Repo.Migrations.CreateTimeline do
  use Ecto.Migration

  def change do
    create table(:timeline) do
        add :job_title, :string, size: 128
        add :company, :string, size: 128
        add :location, :string, size: 64
        add :description, :text

        timestamps
    end
  end
end
