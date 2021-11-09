class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees #https://guides.rubyonrails.org/active_record_validations.html#validates-associated
  validates :name, length: { minimum: 3 } #https://guides.rubyonrails.org/active_record_validations.html#length
  validates :annual_revenue, numericality: {only_integer: true, greater_than: -1} #https://guides.rubyonrails.org/active_record_validations.html#length
  validate :must_carry_at_least_one_of_the_men_or_women_apparel

  def must_carry_at_least_one_of_the_men_or_women_apparel #https://guides.rubyonrails.org/active_record_validations.html#custom-methods
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:base, "Store must carry at least one of the men's or women's apparel") #https://guides.rubyonrails.org/active_record_validations.html#custom-methods
    end
  end
end


