class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :cohort_id
      t.integer :week_number

      t.timestamps
    end
  end
end
