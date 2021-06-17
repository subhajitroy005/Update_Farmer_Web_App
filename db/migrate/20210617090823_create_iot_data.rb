class CreateIotData < ActiveRecord::Migration[6.1]
  def change
    create_table :iot_data do |t|
      t.string :temp
      t.string :hum

      t.timestamps
    end
  end
end
