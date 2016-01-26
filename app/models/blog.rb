class Blog < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, :use => [:slugged, :finders]
	mount_uploader :image, BlogUploader
	belongs_to :admin_user
	has_and_belongs_to_many :categories, join_table: :blogs_categories
	# accepts_nested_attributes_for :categories
	accepts_nested_attributes_for :categories, allow_destroy: true
	validates :title, presence: true

	before_save :default_values
	def default_values
		self.admin_user_id = AdminUser.first.id
	end

	# def to_s
	#   category.title
	# end
end
