class CreateNestedPages < ActiveRecord::Migration
  def change
    create_table :nested_pages do |t|
      t.string :author
      t.string :text

      t.timestamps
    end
  end
end
