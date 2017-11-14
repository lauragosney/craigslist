class Category < ApplicationRecord

  has_many :listings

  validates :title, presence: true, uniquesness: true


end
