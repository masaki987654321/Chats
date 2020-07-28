class Message < ApplicationRecord
    after_create_commit { MessageBroadcastJob.perform self}
end
