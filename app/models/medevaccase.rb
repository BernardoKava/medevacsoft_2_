class Medevaccase < ApplicationRecord
  belongs_to :user
  has_many :patients, inverse_of: :medevaccase, :dependent => :destroy
  has_many :accompanyingpeople, inverse_of: :medevaccase, :dependent => :destroy
  has_many :contactpeople, inverse_of: :medevaccase, :dependent => :destroy
  has_many :stakeholders, inverse_of: :medevaccase, :dependent => :destroy
  has_many :casenotes, inverse_of: :medevaccase, :dependent => :destroy
  belongs_to :hospital
  belongs_to :rhospital
  accepts_nested_attributes_for :patients, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :accompanyingpeople, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :contactpeople, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :stakeholders, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :casenotes, reject_if: :all_blank, allow_destroy: true
end
