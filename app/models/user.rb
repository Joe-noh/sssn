class User < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_format_of     :name, with: /\A[0-9a-zA-Z_]+\z/
end
