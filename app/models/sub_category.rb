class SubCategory < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :name
  validates_presence_of :category

  validates_length_of :description, maximum: 100

  validates_uniqueness_of :name, scope: :category_id
end
