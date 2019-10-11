# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  
  validates :title, presence: true,
                    uniqueness: :true,
                    length: { minimum: 5}
                    
  validates :text,  presence: true,
                    uniqueness: :true,
                    length: { minimum: 50}
                    
   
end
