class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true # https://guides.rubyonrails.org/active_record_validations.html#presence
  validates :hourly_rate, inclusion: 40..200 #https://guides.rubyonrails.org/active_record_validations.html#inclusion
end
