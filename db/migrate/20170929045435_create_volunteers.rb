class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table(:volunteers) do |t|
    t.column(:name, :string)
    t.column(:project_id, :integer)

    t.timestamps()
    end
  end
end
