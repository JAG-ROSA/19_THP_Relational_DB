class Specialty < ApplicationRecord
  has_many :doctors, through: :doc_specialities
end
