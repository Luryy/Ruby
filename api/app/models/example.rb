class Example < ApplicationRecord
	belongs_to :example_relation, optional: true

	validates :age, presence: true
	validates :name, length: {minimum: 4}
end
