class CreateBLogs < ActiveRecord::Migration
  def change
    create_table :b_logs do |t|
      t.content :title

      t.timestamps
    end
  end
end
