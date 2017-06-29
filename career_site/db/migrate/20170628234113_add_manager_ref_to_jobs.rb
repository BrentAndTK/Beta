class AddManagerRefToJobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :manager, foreign_key: true
  end
end
