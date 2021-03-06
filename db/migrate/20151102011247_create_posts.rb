class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.belongs_to :user, index:true 
    	t.text :content
    	t.boolean :anon, default:false
      t.timestamps null: false
    end
  end
end
