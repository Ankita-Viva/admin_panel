class News < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, :use => [:slugged, :finders]
	mount_uploader :image, ImageUploader
	belongs_to :admin_user
	has_and_belongs_to_many :news_categories
	validates :title, presence: true
	before_save :default_values
	def default_values
		self.admin_user_id = AdminUser.first.id
	end
end
