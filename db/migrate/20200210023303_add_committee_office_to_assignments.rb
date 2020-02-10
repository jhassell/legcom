class AddCommitteeOfficeToAssignments < ActiveRecord::Migration[5.2]

  def change
    add_column :assignments, :committee_office_id, :integer
  end
end
