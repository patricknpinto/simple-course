class Candidate < ActiveRecord::Base
  validates :name, :slug, presence: :true

  has_many :courses
end
