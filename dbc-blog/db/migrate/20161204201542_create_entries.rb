class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :title, {null: false}
    	t.string :body, {null: false}
    	t.string :author_id, {null: false} 
    end
  end
end
