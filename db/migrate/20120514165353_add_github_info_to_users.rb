class AddGithubInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :blog_url, :string
    add_column :users, :profile_url, :string
    add_column :users, :api_url, :string
    add_column :users, :login, :string
    add_column :users, :avatar_url, :string
    add_column :users, :bio, :text
  end
end
