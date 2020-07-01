class Peppy < ApplicationRecord
    validates :title, presence: {
        message: "Your peppy need a title"
    }
end
