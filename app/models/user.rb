class User < ActiveRecord::Base
  has_many :recordings
  has_many :categories

  acts_as_authentic do |config|
    config.login_field = :name
  end

  validates_uniqueness_of :name
  validates_format_of     :name, with: /\A[0-9a-zA-Z_]+\z/
end
