class Category < ActiveRecord::Base
  belongs_to :user
  has_many :sub_categories

  enum io: [:outlay, :income]

  validates_presence_of :user
  validates_presence_of :name
  validates_presence_of :io

  validates_length_of :description, maximum: 100

  validates_uniqueness_of :name, scope: :user_id
end
