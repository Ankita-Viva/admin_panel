class MenuItem < ActiveRecord::Base
	belongs_to :menu
	validates :title, presence: true
	validates :menu_id, presence: true
	validates :order, numericality: { only_integer: true }
end
