class Guestbook < ApplicationRecord
	belongs_to :user
	validate :guestbook_message_limit, :on => :create

	def guestbook_message_limit

		if self.user.guestbook(:reload).count >= 1
			errors.add(:base, "You can only sign the guesbook once")
		else
			count += 1
		end
	end	


end
