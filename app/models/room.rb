class Room < ApplicationRecord
    validates :name, presence: true ,length: { maximum: 20 }
    validates :ip, presence: true
end
