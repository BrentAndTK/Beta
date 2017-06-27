class CreateActivejobs < ActiveRecord::Migration[5.1]
  def change
    create_table :activejobs do |t|
      t.belongs_to :manager, index: true
      t.belongs_to :job, index: true

      t.timestamps
    end
  end
end
