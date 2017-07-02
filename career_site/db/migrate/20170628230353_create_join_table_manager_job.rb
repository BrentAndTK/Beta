class CreateJoinTableManagerJob < ActiveRecord::Migration[5.1]
  def change
    create_table :managers_jobs, id: false do |t|
      t.belongs_to :manager, index: true
      t.belongs_to :job, index: true
    end
  end
end
