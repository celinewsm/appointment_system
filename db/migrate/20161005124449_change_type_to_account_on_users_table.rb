class ChangeTypeToAccountOnUsersTable < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.rename :type, :account
    end
  end
end
