class Owner < ApplicationRecord
  has_many :animals, class_name: "Animal", foreign_key: "owners_id"
end
