# == Schema Information
# Schema version: 20100612030558
#
# Table name: articles
#
#  id             :integer         not null, primary key
#  channel_id     :integer         
#  title          :string(255)     
#  sub_title      :string(255)     
#  short_content  :text            
#  content        :text            
#  source         :string(255)     
#  source_link    :string(255)     
#  if_link        :boolean         
#  author_id      :integer         
#  state_id       :integer         
#  hits           :integer         
#  priority       :integer         default(0)
#  sticky         :boolean         
#  comments_count :integer         
#  created_at     :datetime        
#  updated_at     :datetime        
#

class Article < ActiveRecord::Base
  include SimpleEnum
  has_enum :status, :enums => [[:unactived, 0, "未激活"],[:normal, 1, "正常"],[:locked, 2, "已锁定"]], :column => :state_id, :default => :normal

  belongs_to:channel
  has_many:comment

  validates_presence_of :title,:channel_id,:content

end
