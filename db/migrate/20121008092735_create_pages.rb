class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :author
      t.string :text

      t.timestamps
    end
  end
end
