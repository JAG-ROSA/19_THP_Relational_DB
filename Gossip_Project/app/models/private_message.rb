class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

  belongs_to  :user
  has_many :users, through: :mailboxes
end