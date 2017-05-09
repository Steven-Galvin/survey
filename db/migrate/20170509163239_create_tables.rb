class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:surveys) do |t|
      t.column(:name, :string)

      t.timestamps()
    end

    create_table(:questions) do |t|
      t.column(:description, :string)
      t.column(:survey_id, :integer)

      t.timestamps()
    end

    create_table(:answers) do |t|
      t.column(:description, :string)
      t.column(:question_id, :integer)

      t.timestamps()
    end
  end
end
