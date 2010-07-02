# == Schema Information
# Schema version: 20100612030558
#
# Table name: comments
#
#  id               :integer         not null, primary key
#  commentable_type :string(255)     
#  commentable_id   :integer         
#  content          :text            
#  user_id          :integer         
#  visitor_name     :string(255)     
#  visted_ip        :string(255)     
#  vote_for         :integer         
#  vote_against     :integer         
#  state_id         :integer         
#  created_at       :datetime        
#  updated_at       :datetime        
#

class Comment < ActiveRecord::Base
  belongs_to:article
end
