class AddOwnerIdToEvents < ActiveRecord::Migration[5.1]
  def change
    add_reference :events, :owner, foreign_key: {to_table: :users}, index: true
  end
end
