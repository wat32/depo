class AddFilesToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :files, :string
  end
end
