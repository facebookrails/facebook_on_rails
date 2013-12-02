class Post < ActiveRecord::Base
	after_create :to_facebook
	
	belongs_to :user

	def to_facebook
		if self.post_on_facebook == true
			self.user.facebook.put_wall_post("#{self.content}")
		end
	end
end
