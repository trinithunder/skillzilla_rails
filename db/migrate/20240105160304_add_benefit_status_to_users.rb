class AddBenefitStatusToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :benefit_status, :integer
  end
end
