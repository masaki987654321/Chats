class Remark < ApplicationRecord
    belongs_to :room
    validates :text, presence: true ,length: { maximum: 500 }
    validates :ip, presence: true
    validates :room_id, presence: true
end
