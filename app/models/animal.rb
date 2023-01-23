class Animal < ApplicationRecord
  belongs_to :owners, class_name: "Owner", foreign_key: "owners_id"
  validates :name, presence: true
  validates :owners_id, presence: :true
end