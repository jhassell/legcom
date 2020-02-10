class RemoveMemberTitleFromMembers < ActiveRecord::Migration[5.2]

  def up
    remove_column :members, :member_title
  end

  def down
    add_column :members, :member_title
  end
end
