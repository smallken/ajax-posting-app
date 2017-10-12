class Post < ApplicationRecord
  belongs_to :categorey, :optional => true
  validates_presence_of :content
  belongs_to :user

  has_many :likes, :dependent => :destroy
  has_many :liked_users, :through => :likes, :source => :user

  has_many :collects, :dependent => :destroy
  has_many :collected_users, :through => :collects, :source => :user

  def find_collect(user)
    self.collects.where( :user_id => user.id ).first
  end

  def find_like(user)
    self.likes.where( :user_id => user.id ).first
  end


  has_many :scores, :class_name => "PostScore"

   def find_score(user)
     user && self.scores.where( :user_id => user.id ).first
   end


   def average_score
     self.scores.average(:score)
   end
end
