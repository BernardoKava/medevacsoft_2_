class Serviceprovider < ApplicationRecord

  has_many :serviceportfolios, inverse_of: :serviceprovider, :dependent => :destroy
  has_many :pvettinginfos, inverse_of: :serviceprovider, :dependent => :destroy
  accepts_nested_attributes_for :serviceportfolios, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :pvettinginfos, reject_if: :all_blank, allow_destroy: true
end
