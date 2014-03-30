class AddUserInfo < ActiveRecord::Migration
  def change

  	add_column :users, :name, :string
  	add_column :users, :username, :string
  	add_column :users, :brief, :string #简介
  	add_column :users, :introduction, :string #介绍
  	add_column :users, :authentication_token, :string #验证成功后获取 token
    add_column :users, :lock, :string # 锁定 
    add_column :users, :lockdate, :string #锁定的日期

  	add_index :users, :username, :unique => true
    add_index :users, :authentication_token,   :unique => true
  end


end
