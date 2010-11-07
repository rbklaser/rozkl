class AddDocumentToSprawdzians < ActiveRecord::Migration
  def self.up
    add_column :sprawdzians, :document_file_name, :string
    add_column :sprawdzians, :document_content_type, :string
    add_column :sprawdzians, :document_file_size, :integer
    add_column :sprawdzians, :document_updated_at, :datetime
  end

  def self.down
  end
end
