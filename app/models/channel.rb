# == Schema Information
# Schema version: 20100612030558
#
# Table name: channels
#
#  id             :integer         not null, primary key
#  title          :string(255)     
#  intro          :text            
#  parent_id      :integer         
#  lft            :integer         
#  rgt            :integer         
#  contents_count :integer         default(0)
#  created_at     :datetime        
#  updated_at     :datetime        
#

class Channel < ActiveRecord::Base
  acts_as_nested_set
  has_many:articles
  
    
end
