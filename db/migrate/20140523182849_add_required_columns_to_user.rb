class AddRequiredColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :crypted_password, :string
    add_column :users, :password_salt, :string
    add_column :users, :persistence_token, :string
    remove_column :users, :password
    remove_column :users, :new
    remove_column :users, :edit
  end
end
