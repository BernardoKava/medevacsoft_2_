class Medevaccase < ApplicationRecord
  belongs_to :user
  has_many :patients, inverse_of: :medevaccase, :dependent => :destroy
  accepts_nested_attributes_for :patients, reject_if: :all_blank, allow_destroy: true

end
