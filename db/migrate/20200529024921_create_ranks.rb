class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.integer :current_rank
      t.integer :last_week
      t.integer :total_weeks

      t.timestamps
    end
  end
end
