class Listing < ApplicationRecord

  belongs_to :category

  validates :title, presence: true
  validates :body, presence: true

  def to_param

    id.to_s + "-" + title.parameterize

  end

end
