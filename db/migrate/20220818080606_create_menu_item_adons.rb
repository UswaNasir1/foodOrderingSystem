class CreateMenuItemAdons < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_item_adons do |t|

      t.timestamps
    end
  end
end
