class AddUserToAssignmentsMembersCommittees < ActiveRecord::Migration[5.2]

  def change
    add_column :assignments, :user_id, :integer
    add_column :members, :user_id, :integer
    add_column :committees, :user_id, :integer
  end
end
