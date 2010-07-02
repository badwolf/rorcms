# == Schema Information
# Schema version: 20100612030558
#
# Table name: users
#
#  id                :integer         not null, primary key
#  username          :string(255)     
#  email             :string(255)     
#  crypted_password  :string(255)     
#  password_salt     :string(255)     
#  persistence_token :string(255)     
#  created_at        :datetime        
#  updated_at        :datetime        
#

class User < ActiveRecord::Base
  acts_as_authentic

  attr_accessible :username, :email, :password ,:password_confirmation ,:role_id
  belongs_to :role

  # 配置用户初始验证
  def validate
    
 end

  # 如果新密码被设置，则保存之前先加密新密码
  def before_save

  end
  
  # 更新用户时，不允许更改用户名
  def before_update
    self.username = User.find(self).username
  end


  #是否是管理员
  def is_admin?
    self.role_id == 1 
  end

  #是否是自己
  def owns?(entry)
    #return true if is_admin?
    entry.respond_to?(:user) && entry.user == self.id
  end

end
