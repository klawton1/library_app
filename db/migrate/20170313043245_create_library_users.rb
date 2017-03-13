class CreateLibraryUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :library_users do |t|
      t.belongs_to :library
      t.belongs_to :user
      t.timestamps
    end
  end
end
