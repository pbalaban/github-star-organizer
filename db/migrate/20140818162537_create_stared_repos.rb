class CreateStaredRepos < ActiveRecord::Migration
  def change
    create_table :stared_repos do |t|
      t.references :user, index: true
      t.integer :remote_id
      t.string :name
      t.string :full_name
      t.text :description
      t.string :homepage
      t.string :html_url
      t.string :ssh_url
      t.integer :stargazers_count
      t.datetime :pushed_at
      t.datetime :synced_at

      t.timestamps
    end
  end
end
