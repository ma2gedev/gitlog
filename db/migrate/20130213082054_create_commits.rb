class CreateCommits < ActiveRecord::Migration
  def change
    create_table :commits do |t|
      t.string :sha
      t.string :author
      t.timestamp :committed_at
      t.text :message
      t.text :diff

      t.timestamps
    end
  end
end
