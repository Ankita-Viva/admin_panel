class NewsCategory < ActiveRecord::Base
	has_and_belongs_to_many :news
	validates :title, presence: true
end
