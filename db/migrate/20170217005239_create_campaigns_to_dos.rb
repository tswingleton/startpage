class CreateCampaignsToDos < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns_to_dos do |t|
      t.string :Name
      t.string :Notes
      t.string :Marketo
      t.string :Salesforce
      t.string :DueDate

      t.timestamps
    end
  end
end
