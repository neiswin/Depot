class Product < ApplicationRecord
validates :title, :description, :image_url, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true
validates :title, length: { maximum: 15 }
validates :image_url, allow_blank: true, format: {
	with: %r{\.(gif|png|jpg)\Z}i,
	message: 'URL должен быть в формате jpg, png или gif'
}
end
