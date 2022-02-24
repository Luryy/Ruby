class CreateExampleRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :example_relations do |t|
      t.string :url

      t.timestamps
    end
  end
end
