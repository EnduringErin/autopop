class AddColumnToCompetencyTable < ActiveRecord::Migration
  def change
  	add_column :competencies, :body, :string
  end
end
