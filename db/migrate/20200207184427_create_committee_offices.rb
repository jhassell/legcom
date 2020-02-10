class CreateCommitteeOffices < ActiveRecord::Migration[5.2]
  def change
    create_table :committee_offices do |t|
      t.string :name

      t.timestamps
    end
  end
end
