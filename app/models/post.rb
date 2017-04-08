class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  default_scope { order('id DESC')}

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :user, presence: true
end
