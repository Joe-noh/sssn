class Recording < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  enum :io, [:outlay, :income]

  validates_presence_of :user
  validates_presence_of :category
  validates_presence_of :amount
  validates_presence_of :io
  validates_presence_of :payday

  validates_numericality_of :amount, greater_than_or_equal_to: 0
end
