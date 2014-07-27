class RemoveFilesToDocuments < ActiveRecord::Migration
  def change
    remove_column :documents, :files, :string
  end
end
