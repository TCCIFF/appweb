class AddAttachmentFileToDiagramas < ActiveRecord::Migration
  def self.up
    change_table :diagramas do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :diagramas, :file
  end
end
