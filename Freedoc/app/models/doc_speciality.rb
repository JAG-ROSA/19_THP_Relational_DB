class DocSpeciality < ApplicationRecord
  belongs_to :doctor
  belongs_to :specialty
end
