class Visitor < ApplicationRecord
	belongs_to :short , -> {order(short_id: :desc)}
end
