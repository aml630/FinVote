class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments #-> { order "exercise_order desc" } #:order => :cached_votes_score => :desc
	#Comment.order(:cached_votes_score => :desc)


	    #@#comment = Comment.order(:cached_votes_score => :desc)

end
