class Chat < ActiveRecord::Base
	validates :from_user_id, :to_user_id, presence: true
end
