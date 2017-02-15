class Article < ActiveRecord::Base
    has_many :comments, dependent: :destroy, :class_name => 'Comment'
    validates :title, presence: true, length: { minimum:5 }
end
