class AddExampleRelationIdToExample < ActiveRecord::Migration[6.1]
  def change
    add_column :examples, :example_relation_id, :integer
  end
end
