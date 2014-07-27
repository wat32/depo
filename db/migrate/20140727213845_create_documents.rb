class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :type
      t.string :url
      t.string :md5
      t.string :password
      t.string :title
      t.string :description
      t.integer :access_type
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
