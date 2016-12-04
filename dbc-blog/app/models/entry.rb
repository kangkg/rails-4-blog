class Entry < ActiveRecord::Base

	belongs_to :author, class_name: "User"

  validates :title, presence: { message: "Error: You must have a title!" }
  validates :body, uniqueness: { message: "Error: You must provide a new email!" }, presence: { message: "Error: You must provide a body!" }
  
end