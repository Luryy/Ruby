class Example < ApplicationRecord
	validates :age, presence: true
	validates :name, length: {minimum: 4}
end
