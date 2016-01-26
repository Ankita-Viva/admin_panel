class Category < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, :use => [:slugged, :finders]
	has_and_belongs_to_many :blogs, join_table: :blogs_categories
	validates :title, presence: true

	def to_s
	  category_title
	end
end
