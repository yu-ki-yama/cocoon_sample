class Tag < ApplicationRecord
  belongs_to :post
  has_many :descriptions, dependent: :destroy
  accepts_nested_attributes_for :descriptions, reject_if: :all_blank, allow_destroy: true
end
