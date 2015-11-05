class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments

	validates :title,  presence: true, length: {maximum: 100}

  validates :url, presence: true, length: {maximum: 100}, :format => URI::regexp(%w(http https)),
	uniqueness: true

end
