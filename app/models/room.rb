class Room < ApplicationRecord
    has_many :remarks, dependent: :destroy
    validates :name, presence: true ,length: { maximum: 20 }
    validates :ip, presence: true
end
