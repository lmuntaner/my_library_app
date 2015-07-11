class Comment < ActiveRecord::Base
  belongs_to :book

  validates :text_comment, :book_id, presence: true
end
