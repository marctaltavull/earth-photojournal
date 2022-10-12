class AddMissionToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :mission, :string
  end
end
