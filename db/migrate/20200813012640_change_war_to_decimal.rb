class ChangeWarToDecimal < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :war, "numeric USING CAST(war AS numeric)"
	  change_column :players, :war, :decimal, precision: 5, scale: 2
  end
end
